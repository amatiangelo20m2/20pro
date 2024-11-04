import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/app/core/restaurant/booking.dart';
import 'package:badges/badges.dart' as badges;
import 'customer/customer_screen.dart';
import 'employee/reports/report_employee_presence.dart';
import 'notification/notification_screen.dart';
import 'notification/model/notification_entity.dart';
import 'notification/state_manager/notification_state_manager.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = 'main_screen';

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // Index of the currently selected button
  int _selectedIndex = 0;


  final List<Widget> _screens = [
    const BookingScreen(),
    const CustomerScreen(),
    const Center(child: Text('Shopping Screen')),
    const ReportEmployeePresence()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<NotificationStateManager>(
      builder: (BuildContext context, NotificationStateManager value, Widget? child) {
        return Scaffold(
          floatingActionButton: _selectedIndex == 0 ?  FloatingActionButton(
            backgroundColor: Colors.blueGrey.shade900,
            child: const Icon(CupertinoIcons.add, color: Colors.white,),
            onPressed: () {
            value.addNotification(
              NotificationModel(
                title: 'New Notification',
                body: 'This is a test notification',
                dateReceived: DateTime.now().toIso8601String(),
              ),
            );
          },) : null,
          drawer: Drawer(),
          appBar: AppBar(
            surfaceTintColor: Colors.white,
            backgroundColor: Colors.white,
            actions: [

              Consumer<NotificationStateManager>(
                builder: (BuildContext context, NotificationStateManager value, Widget? child) {
                  return IconButton(onPressed: () {
                    Navigator.pushNamed(context, NotificationsPage.routeName);
                  }, icon: badges.Badge(
                      badgeContent: Text(value.notifications.length.toString(), style: TextStyle(color: Colors.white),),
                      position: badges.BadgePosition.topEnd(),
                      child: const Icon(CupertinoIcons.bell))
                  );
                },
              ),
            ],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/logo.png', width: 25),
                    Text('20PRO'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      heroTag: "btn1",
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 0; // Set index for Calendar Screen
                        });
                      },
                      mini: _selectedIndex != 0, // Set to mini if not selected
                      backgroundColor: _selectedIndex == 0 ? Colors.blueGrey.shade900 : Colors.grey.shade100, // Set background color based on selection
                      foregroundColor: _selectedIndex == 0 ? Colors.white : Colors.black, // Set icon color based on selection
                      child: const badges.Badge(
                          badgeContent: Text(
                            '1',
                            style: TextStyle(color: Colors.white),
                          ),
                          child: Icon(CupertinoIcons.calendar)
                      ),
                    ),
                    const SizedBox(width: 15), // Space between buttons
                    FloatingActionButton(
                      heroTag: "btn2",
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 1; // Set index for People Screen
                        });
                      },
                      mini: _selectedIndex != 1, // Set to mini if not selected
                      backgroundColor: _selectedIndex == 1 ? Colors.blueGrey.shade900 : Colors.grey.shade100, // Set background color based on selection
                      foregroundColor: _selectedIndex == 1 ? Colors.white : Colors.black, // Set icon color based on selection
                      child: const badges.Badge(
                          badgeContent: Text(
                            '3',
                            style: TextStyle(color: Colors.white),
                          ),
                          child: Icon(CupertinoIcons.globe)
                      ),
                    ),
                    const SizedBox(width: 15),
                    FloatingActionButton(
                      heroTag: "btn3",
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 2; // Set index for Shopping Screen
                        });
                      },
                      mini: _selectedIndex != 2, // Set to mini if not selected
                      backgroundColor: _selectedIndex == 2 ? Colors.blueGrey.shade900 : Colors.grey.shade100, // Set background color based on selection
                      foregroundColor: _selectedIndex == 2 ? Colors.white : Colors.black, // Set icon color based on selection
                      child: const Icon(CupertinoIcons.clear),
                    ),
                    const SizedBox(width: 15),
                    FloatingActionButton(
                      heroTag: "btn4",
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 3; // Set index for Shopping Screen
                        });
                      },
                      mini: _selectedIndex != 3, // Set to mini if not selected
                      backgroundColor: _selectedIndex == 3 ? Colors.blueGrey.shade900 : Colors.grey.shade100, // Set background color based on selection
                      foregroundColor: _selectedIndex == 3 ? Colors.white : Colors.black, // Set icon color based on selection
                      child: const Icon(CupertinoIcons.clock),
                    ),
                  ],
                ),
                const SizedBox(width: 0,)
              ],
            ),
          ),
          body: Stack(
            children: [
              // Display the selected screen based on button index
              _screens[_selectedIndex],
              Positioned(
                bottom: 30, // Position from the bottom
                left: 0,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Powerade by ', style: TextStyle(fontSize: 6),),
                          Image.asset('assets/images/logo-black.png', width: 15),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
        );
      },
    );
  }
}
