import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:ventipro/global/style.dart';
import 'package:vibration/vibration.dart';

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

  final italianDateFormat = DateFormat('EEEE d MMMM y', 'it_IT');

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
      msg: 'Prenotazioni data ' + italianDateFormat.format(_selectedDate),
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
                  child: Text('Oggi', style: TextStyle(fontWeight: FontWeight.bold, color: isTodaySelected ? globalBlue : Colors.grey),),
                ),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    Vibration.vibrate(duration: 1000);
                    _scrollToTomorrow();
                  },
                  child: Text('Domani', style: TextStyle(fontWeight: FontWeight.bold, color: isTomorrowSelected ? globalBlue : Colors.grey),),
                ),
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
                    width: 65,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      color: isSelected ? globalBlue : Colors.grey[100],
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
                        Text(
                          '0 Tavoli',
                          style: TextStyle(
                              fontSize: 9,
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: isSelected
                                  ? Colors.white
                                  : Colors.black),
                        ),
                        Text(
                          '0 pax',
                          style: TextStyle(
                              fontSize: 9,
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: isSelected
                                  ? Colors.white
                                  : Colors.black),
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
          flex: 6,
          child: Text(''),
        ),

      ],
    );
  }
}
