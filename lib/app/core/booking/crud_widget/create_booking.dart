import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/state_manager/restaurant_state_manager.dart';

class CreateBooking extends StatefulWidget {
  @override
  _CreateBookingState createState() => _CreateBookingState();
}

class _CreateBookingState extends State<CreateBooking> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _guests = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  DateTime _selectedDate = DateTime.now();
  int _selectedWaitingTime = 15;
  final List<int> _waitingOptions = [15, 30, 45, 60];

  Future<void> _selectDate(BuildContext context) async {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return Container(
          height: 250,
          color: CupertinoColors.systemBackground,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: _selectedDate,
            onDateTimeChanged: (DateTime newDate) {
              setState(() {
                _selectedDate = newDate;
              });
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RestaurantStateManager>(
      builder: (BuildContext context, RestaurantStateManager value, Widget? child) {
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
                    padding: EdgeInsets.all(16),
                  ),
                  const SizedBox(height: 16),
                  CupertinoTextField(
                    controller: _lastNameController,
                    placeholder: "Cognome",
                    padding: EdgeInsets.all(16),
                  ),const SizedBox(height: 16),
                  CupertinoTextField(
                    controller: _guests,
                    placeholder: "Ospiti",
                    padding: EdgeInsets.all(16),
                  ),
                  SizedBox(height: 16),
                  GestureDetector(
                    onTap: () => _selectDate(context),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: CupertinoColors.systemGrey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date of Birth: ${_selectedDate.toLocal()}".split(' ')[0],
                            style: TextStyle(
                              color: CupertinoColors.black,
                            ),
                          ),
                          Icon(
                            CupertinoIcons.calendar,
                            color: CupertinoColors.systemGrey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  CupertinoTextField(
                    controller: _emailController,
                    placeholder: "Email",
                    keyboardType: TextInputType.emailAddress,
                    padding: EdgeInsets.all(16),
                  ),
                  SizedBox(height: 16),
                  CupertinoTextField(
                    controller: _phoneController,
                    placeholder: "Phone Number",
                    keyboardType: TextInputType.phone,
                    padding: EdgeInsets.all(16),
                  ),
                  SizedBox(height: 16),
                  CupertinoTextField(
                    controller: _phoneController,
                    placeholder: "Minuti",
                    keyboardType: TextInputType.phone,
                    padding: EdgeInsets.all(16),
                  ),
                  SizedBox(height: 16),

                  CupertinoButton.filled(
                    child: Text("Crea"),
                    onPressed: () {
                      value.createBooking();
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