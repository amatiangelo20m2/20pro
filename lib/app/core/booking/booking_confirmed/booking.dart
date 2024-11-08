import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/api/restaurant_client/lib/api.dart';
import 'package:ventipro/app/core/booking/crud_widget/create_booking_confermato.dart';
import 'package:ventipro/state_manager/restaurant_state_manager.dart';
import 'package:vibration/vibration.dart';
import '../../../../global/style.dart';
import 'package:badges/badges.dart' as badges;
import 'booking_card.dart';

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

  bool _searchField = false;

  String? _selectedSegmentTimeRange = 'TUTTI';
  bool switchValue = true;

  BookingDTOStatusEnum currentBookingStatus = BookingDTOStatusEnum.CONFERMATO;

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
      30,
      (index) => DateTime.now().add(Duration(days: index)),
    );
  }

  Future<void> _onDaySelected(
      DateTime day, RestaurantStateManager restaurantStateManager) async {
    final today = DateTime.now();
    final tomorrow = DateTime.now().add(const Duration(days: 1));

    setState(() {
      _selectedDate = day;
      isTodaySelected = day.day == today.day &&
          day.month == today.month &&
          day.year == today.year;

      isTomorrowSelected = day.day == tomorrow.day &&
          day.month == tomorrow.month &&
          day.year == tomorrow.year;

      _scrollToSelectedDay();
    });

    await restaurantStateManager.selectBookingForCurrentDay(_selectedDate);

    Fluttertoast.showToast(
      webShowClose: true,
      timeInSecForIosWeb: 1,
      msg: 'Prenotazioni di ${italianDateFormat.format(_selectedDate)}',
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

  void _scrollToToday(RestaurantStateManager restaurantManager) {
    final todayIndex = _days.indexWhere((day) =>
        day.day == DateTime.now().day &&
        day.month == DateTime.now().month &&
        day.year == DateTime.now().year);
    if (todayIndex != -1) {
      setState(() {
        _selectedDate = _days[todayIndex];
        isTodaySelected = true;
        isTomorrowSelected = false;
        _scrollToSelectedDay();
        _onDaySelected(_selectedDate, restaurantManager);
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

  void _scrollToTomorrow(RestaurantStateManager restaurantManager) {
    final tomorrow = DateTime.now().add(Duration(days: 1));
    final tomorrowIndex = _days.indexWhere((day) =>
        day.day == tomorrow.day &&
        day.month == tomorrow.month &&
        day.year == tomorrow.year);
    if (tomorrowIndex != -1) {
      setState(() {
        _selectedDate = _days[tomorrowIndex];
        isTodaySelected = false;
        isTomorrowSelected = true;
        _scrollToSelectedDay();
        _onDaySelected(_selectedDate, restaurantManager);
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
    return Consumer<RestaurantStateManager>(
      builder: (BuildContext context, RestaurantStateManager restaurantManager,
          Widget? child) {
        return Stack(
          children: [
            Column(
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
                            _scrollToToday(restaurantManager);
                          },
                          child: Text(
                            'Oggi',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: isTodaySelected
                                    ? Colors.blueGrey.shade900
                                    : Colors.grey),
                          ),
                        ),
                        const SizedBox(width: 10),
                        TextButton(
                          onPressed: () {
                            Vibration.vibrate(duration: 1000);
                            _scrollToTomorrow(restaurantManager);
                          },
                          child: Text(
                            'Domani',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: isTomorrowSelected
                                    ? Colors.blueGrey.shade900
                                    : Colors.grey),
                          ),
                        ),
                        SizedBox(width: 20),
                        IconButton(
                            onPressed: () {
                              _selectDate(
                                  context, _selectedDate, restaurantManager);
                              // _pickDateRange(context);
                            },
                            icon: Icon(CupertinoIcons.calendar,
                                color: Colors.blueGrey)),
                        IconButton(
                            onPressed: () {
                              _showSortMenu(context);
                            },
                            icon: const Icon(CupertinoIcons.sort_down,
                                color: Colors.blueGrey)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                _searchField = !_searchField;
                              });
                            },
                            icon: const Icon(CupertinoIcons.search)),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  flex: 1,
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (scrollNotification) {
                      if (scrollNotification is ScrollUpdateNotification) {
                        final firstVisibleIndex = (scrollNotification
                                    .metrics.pixels /
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
                          onTap: () => _onDaySelected(day, restaurantManager),
                          child: Container(
                            width: 60,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Colors.blueGrey.shade900
                                  : Colors.grey[100],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  capitalizeFirstLetter(DateFormat.E('it')
                                          .format(day)
                                          .substring(0, 3))
                                      .toUpperCase(),
                                  style: TextStyle(
                                      fontSize: 9,
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.black),
                                ),
                                const SizedBox(height: 1),
                                Text(
                                  '${day.day}.${day.month}',
                                  style: TextStyle(
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 12),
                                ),
                                const SizedBox(height: 1),
                                _buildCurrentDaySituationWidget(
                                    restaurantManager.allBookings!
                                        .where((element) => isSameDay(
                                            element.bookingDate!, day))
                                        .toList(),
                                    isSelected)
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 2, top: 2, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${italianDateFormat.format(_selectedDate)}'
                            .toUpperCase(),
                        style: TextStyle(fontSize: 10),
                      ),
                      Row(
                        children: [
                          Text(restaurantManager
                                  .retrieveTotalGuestsNumberForDayAndActiveBookings(
                                      _selectedDate) +
                              '/' +
                              restaurantManager
                                  .restaurantConfiguration!.capacity
                                  .toString()),
                          CupertinoSegmentedControl<String>(
                            selectedColor: Colors.blueGrey.shade900,
                            children: const {
                              'PRANZO': Text(
                                '🌞',
                                style: TextStyle(fontSize: 20),
                              ),
                              'CENA': Text(
                                '🌚',
                                style: TextStyle(fontSize: 20),
                              ),
                              'TUTTI': Text(
                                ' TUTTI ',
                                style: TextStyle(fontSize: 10),
                              ),
                            },
                            onValueChanged: (value) {
                              setState(() {
                                _selectedSegmentTimeRange = value;
                              });
                              Fluttertoast.showToast(
                                  msg:
                                      'Prenotazioni $_selectedSegmentTimeRange');
                            },
                            groupValue: _selectedSegmentTimeRange,
                          ),
                          Text(currentBookingStatus.value),
                          CupertinoSwitch(
                            // This bool value toggles the switch.
                            value: switchValue,
                            activeColor: Colors.green,
                            trackColor: Colors.red,
                            onChanged: (bool? value) {
                              setState(() {
                                switchValue = value ?? false;
                                if (value!) {
                                  setState(() {
                                    currentBookingStatus =
                                        BookingDTOStatusEnum.CONFERMATO;
                                  });
                                  Fluttertoast.showToast(
                                      msg:
                                          'Prenotazioni in stato ${currentBookingStatus}');
                                } else {
                                  setState(() {
                                    currentBookingStatus =
                                        BookingDTOStatusEnum.RIFIUTATO;
                                  });
                                  Fluttertoast.showToast(
                                      msg:
                                          'Prenotazioni in stato ${currentBookingStatus}');
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (_searchField)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 2, bottom: 3),
                      child: CupertinoTextField(
                        clearButtonMode: OverlayVisibilityMode.always,
                        placeholder:
                            'Ricerca per nome, codice prenotazione mail o cellulare',
                      ),
                    ),
                  ),
                Expanded(
                  flex: 5,
                  child: RefreshIndicator(
                    onRefresh: () async {
                      await restaurantManager.refresh(_selectedDate);
                    },
                    child: ListView.builder(
                      padding: const EdgeInsets.only(bottom: 160),
                      itemCount: restaurantManager.currentBookings!
                          .where((element) =>
                              element.status == currentBookingStatus)
                          .length,
                      itemBuilder: (context, index) {
                        return ReservationCard(
                            booking: restaurantManager.currentBookings!
                                .where((element) =>
                                    element.status == currentBookingStatus)
                                .toList()[index],
                            formDTOs: restaurantManager.currentBranchForms!);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: FloatingActionButton(
                    backgroundColor:
                        getStatusColor(BookingDTOStatusEnum.CONFERMATO),
                    child: const Icon(
                      CupertinoIcons.add,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      showFormBottomSheet(
                          context, BookingDTOStatusEnum.CONFERMATO);
                    },
                  ),
                ))
          ],
        );
      },
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

  Future<DateTime> _selectDate(BuildContext context, DateTime currentDate,
      RestaurantStateManager restaurantStateManager) async {
    final DateTime? picked = await showDatePicker(
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            // Header background color
            hintColor: Colors.blueGrey, // Header text color
            colorScheme: ColorScheme.light(
              primary: Colors.blueGrey, // selection color
              onSurface: Colors.black, // body text color
            ),
            dialogBackgroundColor: Colors.white, // Background color
          ),
          child: child!,
        );
      },
      context: context,
      initialDate: currentDate,
      firstDate: DateTime.now().subtract(Duration(days: 200)),
      lastDate: DateTime(2100),
      locale: const Locale('it', 'IT'),
    );
    if (picked != null) {
      final DateTime selectedDate =
          DateTime(picked.year, picked.month, picked.day, 10);
      setState(() {
        _selectedDate = selectedDate;
        _onDaySelected(_selectedDate, restaurantStateManager);
      });
      return selectedDate;
    } else {
      return DateTime.now();
    }
  }

  _buildCurrentDaySituationWidget(List<BookingDTO> list, bool isSelected) {
    int tables = list
        .where((element) => element.status == BookingDTOStatusEnum.CONFERMATO)
        .length;
    int currentGuestNumber = (list
        .where((element) => element.status == BookingDTOStatusEnum.CONFERMATO)
        .fold(0, (total, booking) => total + (booking.numGuests ?? 0)));
    int refused = list
        .where((element) => element.status == BookingDTOStatusEnum.RIFIUTATO)
        .length;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        badges.Badge(
          showBadge: currentGuestNumber > 0,
          badgeStyle: badges.BadgeStyle(badgeColor: Colors.blue),
          badgeContent: Text(
            currentGuestNumber.toString(),
            style: TextStyle(fontSize: 7, color: CupertinoColors.white),
          ),
        ),
        const SizedBox(width: 1),
        badges.Badge(
          showBadge: tables > 0,
          badgeStyle: badges.BadgeStyle(badgeColor: Colors.green),
          badgeContent: Text(
            tables.toString().toString(),
            style: TextStyle(fontSize: 7, color: CupertinoColors.white),
          ),
        ),
        const SizedBox(width: 1),
        badges.Badge(
          badgeStyle: badges.BadgeStyle(badgeColor: Colors.red),
          showBadge: refused > 0,
          badgeContent: Text(
            refused.toString(),
            style: const TextStyle(fontSize: 7, color: CupertinoColors.white),
          ),
        ),
      ],
    );
  }

  void showFormBottomSheet(
      BuildContext context, BookingDTOStatusEnum bookingStatus) {
    showModalBottomSheet(
        elevation: 10,
        backgroundColor: getStatusColor(bookingStatus).withOpacity(0.2),
        context: context,
        isScrollControlled: true, // Allows modal to adjust to keyboard
        builder: (context) => const CreateBookingStatusConfirmed());
  }
}
