import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:vibration/vibration.dart';

import '../../../api/restaurant_client/lib/api.dart';
import '../../../global/style.dart';
import 'booking_card.dart';

List<BookingDTO> bookings = [
  BookingDTO(
    bookingId: 12,
    formCode: 'A123',
    branchCode: 'BR001',
    bookingCode: 'BK2024',
    bookingDate: DateTime.now().add(Duration(days: 2)),
    timeSlot: TimeSlot(
      timeRangeCode: 'T001',
      bookingHour: 19,
      bookingMinutes: 0,
    ),
    numGuests: 4,
    status: BookingDTOStatusEnum.PENDING,
    specialRequests: 'Window seat, please.',
    customer: CustomerDTO(
      customerId: 124124,
      firstName: 'Alice',
      lastName: 'Rossi',
      email: 'alice.rossi@example.com',
      phone: '+39 345 678 9012',
      birthDate: DateTime(1985, 3, 20),
      city: 'Rome',
      country: 'Italy',
      privacyConsent: true,
      marketingConsent: false,
      profilingConsent: true,
      registrationDate: DateTime(2021, 5, 15),
    ),
    comingWithDogs: false,
  ),
  BookingDTO(
    bookingId: 1233,
    formCode: 'A123',
    branchCode: 'BR001',
    bookingCode: 'BK2024',
    bookingDate: DateTime.now().add(Duration(days: 2)),
    timeSlot: TimeSlot(
      timeRangeCode: 'T001',
      bookingHour: 19,
      bookingMinutes: 0,
    ),
    numGuests: 4,
    status: BookingDTOStatusEnum.CANCELLED,
    specialRequests: 'Window seat, please.',
    customer: CustomerDTO(
      customerId: 124124,
      firstName: 'Angelo',
      lastName: 'Amati',
      email: 'alice.rossi@example.com',
      phone: '+39 345 678 9012',
      birthDate: DateTime(1985, 3, 20),
      city: 'Rome',
      country: 'Italy',
      privacyConsent: true,
      marketingConsent: false,
      profilingConsent: true,
      registrationDate: DateTime(2021, 5, 15),
    ),
    comingWithDogs: true,
  ),
  BookingDTO(
    bookingId: 12,
    formCode: 'A123',
    branchCode: 'BR001',
    bookingCode: 'BK2024',
    bookingDate: DateTime.now().add(Duration(days: 2)),
    timeSlot: TimeSlot(
      timeRangeCode: 'T001',
      bookingHour: 19,
      bookingMinutes: 0,
    ),
    numGuests: 4,
    status: BookingDTOStatusEnum.CONFIRMED,
    specialRequests: 'Window seat, please.',
    customer: CustomerDTO(
      customerId: 124124,
      firstName: 'Gianfranco',
      lastName: 'Pizzutoli',
      email: 'alice.rossi@example.com',
      phone: '+39 345 678 9012',
      birthDate: DateTime(1985, 3, 20),
      city: 'Rome',
      country: 'Italy',
      privacyConsent: true,
      marketingConsent: false,
      profilingConsent: true,
      registrationDate: DateTime(2021, 5, 15),
    ),
    comingWithDogs: true,
  ),
  BookingDTO(
    bookingId: 12,
    formCode: 'A123',
    branchCode: 'BR001',
    bookingCode: 'BK2024',
    bookingDate: DateTime.now().add(Duration(days: 2)),
    timeSlot: TimeSlot(
      timeRangeCode: 'T001',
      bookingHour: 19,
      bookingMinutes: 0,
    ),
    numGuests: 4,
    status: BookingDTOStatusEnum.PENDING,
    specialRequests: 'Window seat, please.',
    customer: CustomerDTO(
      customerId: 124124,
      firstName: 'Alice',
      lastName: 'Rossi',
      email: 'alice.rossi@example.com',
      phone: '+39 345 678 9012',
      birthDate: DateTime(1985, 3, 20),
      city: 'Rome',
      country: 'Italy',
      privacyConsent: true,
      marketingConsent: false,
      profilingConsent: true,
      registrationDate: DateTime(2021, 5, 15),
    ),
    comingWithDogs: false,
  ),
];

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {

  DateTime _selectedDate = DateTime.now();
  late List<DateTime> _days;
  late ScrollController _scrollController;

  bool isTodaySelected = true;
  bool isTomorrowSelected = false;

  @override
  void initState() {
    super.initState();
    _generateDays();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _generateDays() {
    _days = List<DateTime>.generate(
      100,
          (index) => DateTime.now().add(Duration(days: index)),
    );
  }

  void _onDaySelected(DateTime day) {
    final today = DateTime.now();
    final tomorrow = DateTime.now().add(Duration(days: 1));

    setState(() {
      _selectedDate = day;
      isTodaySelected = day.day == today.day
          && day.month == today.month
          && day.year == today.year;

      isTomorrowSelected = day.day == tomorrow.day
          && day.month == tomorrow.month
          && day.year == tomorrow.year;

      _scrollToSelectedDay();
    });

    Fluttertoast.showToast(
      webShowClose: true,
      timeInSecForIosWeb: 1,
      msg: 'Prenotazioni data ${italianDateFormat.format(_selectedDate)}',
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 12.0,
    );
  }

  void _scrollToSelectedDay() {
    final selectedIndex =
    _days.indexWhere((day) => day.isAtSameMomentAs(_selectedDate));
    if (selectedIndex != -1) {
      _scrollController.animateTo(
        selectedIndex * 60.0, // Adjust as needed based on your item width
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void _scrollToToday() {
    final todayIndex = _days.indexWhere(
            (day) => day.day == DateTime.now().day && day.month == DateTime.now().month && day.year == DateTime.now().year);
    if (todayIndex != -1) {
      setState(() {
        _selectedDate = _days[todayIndex];
        isTodaySelected = true;
        isTomorrowSelected = false;
        _scrollToSelectedDay();
      });
    }
    Fluttertoast.showToast(
      webShowClose: true,
      timeInSecForIosWeb: 6,
      msg: 'Prenotazioni del ' + italianDateFormat.format(_selectedDate),
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 12.0,
    );
  }

  void _scrollToTomorrow() {
    final tomorrow = DateTime.now().add(Duration(days: 1));
    final tomorrowIndex = _days.indexWhere(
            (day) => day.day == tomorrow.day && day.month == tomorrow.month && day.year == tomorrow.year);
    if (tomorrowIndex != -1) {
      setState(() {
        _selectedDate = _days[tomorrowIndex];
        isTodaySelected = false;
        isTomorrowSelected = true;
        _scrollToSelectedDay();
      });
    }
    Fluttertoast.showToast(
      webShowClose: true,
      timeInSecForIosWeb: 6,
      msg: 'Prenotazioni data ' + italianDateFormat.format(_selectedDate),
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 12.0,
    );
  }

  String capitalizeFirstLetter(String input) {
    if (input.isEmpty) {
      return input;
    }
    return input.substring(0, 1).toUpperCase() + input.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Vibration.vibrate(duration: 1000);
                    _scrollToToday();
                  },
                  child: Text('Oggi', style: TextStyle(fontWeight: FontWeight.bold, color: isTodaySelected ? Colors.blueGrey.shade900 : Colors.grey),),
                ),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    Vibration.vibrate(duration: 1000);
                    _scrollToTomorrow();
                  },
                  child: Text('Domani', style: TextStyle(fontWeight: FontWeight.bold, color: isTomorrowSelected ? Colors.blueGrey.shade900 : Colors.grey),),
                ),
                SizedBox(width: 10),
                IconButton(onPressed: (){
                  _showSortMenu(context);
                }, icon: const Icon(CupertinoIcons.sort_down))
              ],
            ),
          ],
        ),
        Expanded(
          flex: 1,
          child: NotificationListener<ScrollNotification>(
            onNotification: (scrollNotification) {
              if (scrollNotification is ScrollUpdateNotification) {
                final firstVisibleIndex = (scrollNotification.metrics.pixels /
                    (scrollNotification.metrics.maxScrollExtent /
                        (_days.length - 1)))
                    .floor();
                if (firstVisibleIndex >= 0 &&
                    firstVisibleIndex < _days.length) {
                  final visibleDay = _days[firstVisibleIndex];

                  // Check if the selected date is outside the visible range
                  if (!_days.contains(_selectedDate)) {
                    // Only update _selectedDate if the user taps on a different day
                    setState(() {
                      _selectedDate = visibleDay;
                    });
                  }
                }
              }
              return false;
            },
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: _days.length,
              itemBuilder: (context, index) {
                final day = _days[index];
                final isSelected = _selectedDate.day == day.day &&
                    _selectedDate.month == day.month &&
                    _selectedDate.year == day.year;

                return GestureDetector(
                  onTap: () => _onDaySelected(day),
                  child: Container(
                    width: 80,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.blueGrey.shade900 : Colors.grey[100],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          capitalizeFirstLetter(
                              DateFormat.E('it').format(day).substring(0, 3)),
                          style: TextStyle(
                              color:
                              isSelected ? Colors.white : Colors.black),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '${day.day}',
                          style: TextStyle(
                              color:
                              isSelected ? Colors.white : Colors.black),
                        ),
                        const SizedBox(height: 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.table_bar_outlined, size: 9, color: isSelected ? Colors.white : Colors.grey.shade700,),

                            Text(
                              '20 Tavoli',
                              style: TextStyle(
                                  fontSize: 7,
                                  fontWeight: isSelected
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.black),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.people_outline, size: 9, color: isSelected ? Colors.white : Colors.grey.shade700,),

                            Text(
                              '100 Persone',
                              style: TextStyle(
                                  fontSize: 7,
                                  fontWeight: isSelected
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.black),
                            ),
                           ],
                        ),

                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text('Prenotazioni ${italianDateFormat.format(_selectedDate)}'.toUpperCase(),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: ListView.builder(
            padding: EdgeInsets.only(bottom: 160),
            itemCount: bookings.length,
            itemBuilder: (context, index) {
              return ReservationCard(booking: bookings[index]);
            },
          ),
        ),

      ],
    );
  }

    void _showSortMenu(BuildContext context) {
      showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
          title: Text('Ordina prenotazioni per'),
          actions: [
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context, 'arrival_time');
                print("Sorting by arrival time");
              },
              child: Text('Ordina per ora arrivo'),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context, 'booking_date');
                print("Sorting by booking date");
              },
              child: Text('Ordina per data prenotazione'),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context, 'name');
                print("Sorting by name");
              },
              child: Text('Ordina per nome'),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context, 'status');
                print("Sorting by status");
              },
              child: Text('Ordina per stato prenotazione'),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context, null); // Close without any action
            },
            isDefaultAction: true,
            child: Text('Cancel'),
          ),
        ),
      );
    }
}
