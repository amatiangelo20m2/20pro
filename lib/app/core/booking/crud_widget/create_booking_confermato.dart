import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

import '../../../../api/restaurant_client/lib/api.dart';
import '../../../../state_manager/restaurant_state_manager.dart';

class CreateBookingStatusConfirmed extends StatefulWidget {
  const CreateBookingStatusConfirmed({super.key});

  @override
  State<CreateBookingStatusConfirmed> createState() => _CreateBookingStatusConfirmedState();
}

class _CreateBookingStatusConfirmedState extends State<CreateBookingStatusConfirmed> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _guests = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _slotTime = TextEditingController();
  final TextEditingController _specialRequests = TextEditingController();

  final FocusNode _minutesFocusNode = FocusNode();
  int _waitingMinutes = 0;

  DateTime _bookingDate = DateTime.now();

  void _showWaitingTimePicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return Material(
          child: Container(
            height: 300,
            color: CupertinoColors.systemBackground,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Seleziona slot', style: TextStyle(fontSize: 10, color: Colors.blueGrey.shade900),),
                ),
                CupertinoTimerPicker(
                  mode: CupertinoTimerPickerMode.hm,
                  initialTimerDuration: Duration(minutes: _waitingMinutes),
                  onTimerDurationChanged: (Duration slotTimeDuration) {
                    setState(() {
                      _slotTime.text = convertMinutesToHMMFormat(slotTimeDuration.inMinutes);
                      _waitingMinutes = slotTimeDuration.inMinutes;
                    });
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String convertMinutesToHMMFormat(int minutes) {
    int hours = minutes ~/ 60; // Integer division to get the number of hours
    int remainingMinutes = minutes % 60; // Get the remainder for minutes
    return 'Arrivo alle ${hours}:${remainingMinutes.toString().padLeft(2, '0')}';
    // Return the formatted string as "h:mm"

  }

  @override
  void initState() {
    super.initState();
    // Disable the keyboard for this text field
    _minutesFocusNode.addListener(() {
      if (_minutesFocusNode.hasFocus) {
        _minutesFocusNode.unfocus();
      }
    });
  }

  @override
  void dispose() {
    _minutesFocusNode.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<RestaurantStateManager>(
      builder: (BuildContext context, RestaurantStateManager restaurantStateManager, Widget? child) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              leading: const Text(''),
              middle: const Text("Crea prenotazione"),
              trailing: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(CupertinoIcons.clear),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  CupertinoTextField(
                    controller: _nameController,
                    placeholder: "Nome",
                    padding: const EdgeInsets.all(8),
                  ),
                  const SizedBox(height: 16),
                  CupertinoTextField(
                    controller: _lastNameController,
                    placeholder: "Cognome",
                    padding: const EdgeInsets.all(8),
                  ),
                  const SizedBox(height: 16),
                  CupertinoTextField(
                    controller: _guests,
                    placeholder: "Ospiti",
                    padding: const EdgeInsets.all(8),
                  ),
                  const SizedBox(height: 16),
                  CupertinoTextField(
                    controller: _emailController,
                    placeholder: "Email",
                    keyboardType: TextInputType.emailAddress,
                    padding: const EdgeInsets.all(8),
                  ),
                  const SizedBox(height: 16),
                  CupertinoTextField(
                    controller: _phoneController,
                    placeholder: "Cellulare",
                    keyboardType: TextInputType.phone,
                    padding: const EdgeInsets.all(8),
                  ),
                  const SizedBox(height: 16),
                  CupertinoTextField(
                    controller: _slotTime,
                    focusNode: _minutesFocusNode, // Attach the focus node here
                    placeholder: "Arrivo alle ore",
                    keyboardType: TextInputType.none, // Prevent the keyboard from opening
                    onTap: () {
                      _showWaitingTimePicker(context); // Show the time picker on tap
                    },
                    padding: const EdgeInsets.all(8),
                  ),
                  const SizedBox(height: 16),
                  CupertinoTextField(
                    controller: _specialRequests,
                    placeholder: "Info",
                    keyboardType: TextInputType.text,
                    padding: const EdgeInsets.all(8),
                  ),
                  const SizedBox(height: 16),
                  CupertinoButton.filled(
                    child: Text("Crea"),
                    onPressed: () async {
                      // Call your API method to create the booking with the waiting time in minutes
                      BookingDTO? bookingDTO = await restaurantStateManager.bookingControllerApi.create(BookingDTO(
                          bookingId: 0,
                          formCode: '',
                          branchCode: restaurantStateManager.currentEmployee!.branchCode!,
                          bookingCode: '',
                          bookingDate: _bookingDate,
                          timeSlot: TimeSlot(
                            bookingHour: DateTime.now().hour,
                            bookingMinutes: DateTime.now().minute + 1,
                          ),
                          numGuests: double.parse(_guests.text).toInt(),
                          status: BookingDTOStatusEnum.LISTA_ATTESA,
                          specialRequests: _specialRequests.text,
                          customer: CustomerDTO(
                              firstName: _nameController.text,
                              lastName: _lastNameController.text,
                              phone: _phoneController.text,
                              prefix: '39',
                              email: _emailController.text
                          ),
                          createdAt: DateTime.now(),
                          timeWaitingFastQueueMinutes: _waitingMinutes, // Use the selected waiting minutes
                          bookingSource: BookingDTOBookingSourceEnum.WEB,
                          comingWithDogs: false));

                      if (bookingDTO != null) {
                        restaurantStateManager.refresh(DateTime.now());
                      } else {
                        Fluttertoast.showToast(
                          webShowClose: true,
                          timeInSecForIosWeb: 6,
                          msg: 'Ho riscontrato un problema durante l\'operazione. Riprova',
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.orange,
                          textColor: Colors.white,
                          fontSize: 12.0,
                        );
                      }

                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}