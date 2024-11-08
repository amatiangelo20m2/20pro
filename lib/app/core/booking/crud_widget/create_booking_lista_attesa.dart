import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/app/core/customer/customer_state_manager.dart';
import 'package:ventipro/state_manager/restaurant_state_manager.dart';

import 'package:ventipro/api/restaurant_client/lib/api.dart';

class CreateBookingListAttesa extends StatefulWidget {

  @override
  _CreateBookingListAttesaState createState() => _CreateBookingListAttesaState();
}

class _CreateBookingListAttesaState extends State<CreateBookingListAttesa> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _guests = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _minutesToWait = TextEditingController();
  final TextEditingController _specialRequests = TextEditingController();

  final FocusNode _minutesFocusNode = FocusNode();
  int _waitingMinutes = 0;

  String searchQuery = '';

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
                  child: Text('Seleziona il tempo di attesa', style: TextStyle(fontSize: 10, color: Colors.blueGrey.shade900),),
                ),
                CupertinoTimerPicker(
                  mode: CupertinoTimerPickerMode.hm,
                  initialTimerDuration: Duration(minutes: _waitingMinutes),
                  onTimerDurationChanged: (Duration newDuration) {
                    setState(() {
                      _minutesToWait.text = convertMinutesToHMMFormat(newDuration.inMinutes);
                      _waitingMinutes = newDuration.inMinutes;
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

  void _showCustomerList(BuildContext context){
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return Material(
          child: Consumer<CustomerStateManager>(
            builder: (BuildContext context,
                CustomerStateManager customerStateManager,
                Widget? child) {

              final List<CustomerDTO> customers = customerStateManager.currentCustomersList!;

              // Filter and group customers by the first letter of their last name
              Map<String, List<CustomerDTO>> groupedCustomers = {};
              for (var customer in customers) {
                if (customer.lastName != null &&
                    (customer.lastName!.toLowerCase().contains(searchQuery.toLowerCase()) ||
                        customer.firstName?.toLowerCase().contains(searchQuery.toLowerCase()) == true)) {
                  String firstLetter = customer.lastName![0].toUpperCase();
                  groupedCustomers.putIfAbsent(firstLetter, () => []).add(customer);
                }
              }

              // Sort the groups alphabetically
              List<String> sortedKeys = groupedCustomers.keys.toList()..sort();

              return Container(
                height: 300,
                color: CupertinoColors.systemBackground,
                child: ListView.builder(
                  itemCount: sortedKeys.length,
                  itemBuilder: (context, index) {
                    String key = sortedKeys[index];
                    List<CustomerDTO> customers = groupedCustomers[key]!..sort((a, b) => a.lastName!.compareTo(b.lastName!));

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Display the first letter as a section header
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                          child: Text(
                            key,
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // Display each customer under the letter group
                        ...customers.map((customer) {
                          return ListTile(
                            title: Text('${customer.firstName} ${customer.lastName}',
                              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                            subtitle: Text(customer.email ?? '', style: const TextStyle(fontSize: 8, fontWeight: FontWeight.bold),),
                            trailing: const Icon(Icons.data_exploration_sharp),
                          );
                        }),
                      ],
                    );
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }

  String convertMinutesToHMMFormat(int minutes) {
    int hours = minutes ~/ 60; // Integer division to get the number of hours
    int remainingMinutes = minutes % 60; // Get the remainder for minutes

    if(hours > 0){
      return 'Attesa di ${hours} ore e ${remainingMinutes.toString().padLeft(2, '0')} minuti';
    }else{
      return 'Attesa di ${remainingMinutes.toString().padLeft(2, '0')} minuti';
    }
    // Return the formatted string as "h:mm"

  }

  CustomerDTO customerDTO = CustomerDTO();

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
                  Consumer<CustomerStateManager>(
                    builder: (BuildContext context, CustomerStateManager customerStateManager, Widget? child) {

                      return Autocomplete<CustomerDTO>(
                        fieldViewBuilder: (
                            BuildContext context,
                            TextEditingController textEditingController,
                            FocusNode focusNode,
                            VoidCallback onFieldSubmitted,
                            ) {
                          return CupertinoTextField(
                            placeholder: "Cellulare",
                            keyboardType: TextInputType.number,
                            controller: textEditingController,
                            focusNode: focusNode,
                          );
                        },
                        optionsBuilder: (TextEditingValue textEditingValue) {
                          // If the input is empty, return an empty list
                          if (textEditingValue.text.isEmpty) {
                            return const Iterable<CustomerDTO>.empty();
                          }else if(textEditingValue.text.length < 5){
                            return const Iterable<CustomerDTO>.empty();
                          }

                          // Filter the customers based on the input text
                          return customerStateManager.currentCustomersList!
                              .where((customer) => customer.phone!
                              .contains(textEditingValue.text.toLowerCase()) ||
                              customer.firstName!.toLowerCase().contains(textEditingValue.text.toLowerCase()) ||
                              customer.lastName!.toLowerCase().contains(textEditingValue.text.toLowerCase()));
                        },

                        displayStringForOption: (CustomerDTO option) {
                          // Define how to display the complex object as a string
                          return '${option.firstName} ${option.lastName} - ${option.phone}';
                        },
                        onSelected: (CustomerDTO selectedCustomer) {
                          // Do something with the selected customer
                          setState(() {
                            _nameController.text = selectedCustomer.firstName ?? '';
                            _lastNameController.text = selectedCustomer.lastName ?? '';
                            _emailController.text = selectedCustomer.email ?? '';
                            _phoneController.text = selectedCustomer.phone ?? '';
                          });
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  CupertinoTextField(
                    controller: _nameController,
                    placeholder: "Nome",
                    style: const TextStyle(fontSize: 13),
                    padding: const EdgeInsets.all(8),
                  ),

                  const SizedBox(height: 16),
                  CupertinoTextField(
                    style: const TextStyle(fontSize: 13),
                    controller: _lastNameController,
                    placeholder: "Cognome",
                    padding: const EdgeInsets.all(8),
                  ),
                  const SizedBox(height: 16),
                  CupertinoTextField(
                    style: const TextStyle(fontSize: 13),
                    keyboardType: const TextInputType.numberWithOptions(signed: false, decimal: false),
                    controller: _guests,
                    placeholder: "Ospiti",
                    padding: const EdgeInsets.all(8),
                  ),
                  const SizedBox(height: 16),
                  CupertinoTextField(
                    controller: _emailController,
                    placeholder: "Email",
                    style: const TextStyle(fontSize: 13),
                    keyboardType: TextInputType.emailAddress,
                    padding: const EdgeInsets.all(8),
                  ),
                  const SizedBox(height: 16),

                  CupertinoTextField(
                    controller: _minutesToWait,
                    focusNode: _minutesFocusNode, // Attach the focus node here
                    placeholder: "Tempo di attesa",
                    style: const TextStyle(fontSize: 13),
                    keyboardType: TextInputType.none, // Prevent the keyboard from opening
                    onTap: () {
                      _showWaitingTimePicker(context); // Show the time picker on tap
                    },
                    padding: const EdgeInsets.all(8),
                  ),
                  const SizedBox(height: 16),
                  CupertinoTextField(
                    controller: _specialRequests,
                    maxLines: 4,
                    style: const TextStyle(fontSize: 13),
                    placeholder: "Richieste particolari e info",
                    keyboardType: TextInputType.text,
                    padding: const EdgeInsets.all(8),
                  ),
                  const SizedBox(height: 16),
                  CupertinoButton.filled(
                    child: const Text("Crea"),
                    onPressed: () async {
                      // Call your API method to create the booking with the waiting time in minutes
                      BookingDTO? bookingDTO = await restaurantStateManager.bookingControllerApi.create(BookingDTO(
                          bookingId: 0,
                          formCode: '',
                          branchCode: restaurantStateManager.currentEmployee!.branchCode!,
                          bookingCode: '',
                          bookingDate: DateTime.now(),
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
                          comingWithDogs: false,
                          timeSlotAfterUpdate: TimeSlot(
                            bookingHour: 0,
                            bookingMinutes: 0,
                          ),
                        numGuestsAfterUpdate: 0,
                        bookingDateAfterUpdate: DateTime.now(),
                      ));

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
