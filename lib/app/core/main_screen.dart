import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/api/restaurant_client/lib/api.dart';
import 'package:badges/badges.dart' as badges;
import 'package:ventipro/app/core/booking/booking_fast_queue/fast_queue.dart';
import 'package:ventipro/state_manager/restaurant_state_manager.dart';
import 'booking/booking.dart';
import 'booking/booking_to_manage/booking_to_manage.dart';
import 'notification/notification_screen.dart';
import 'notification/state_manager/notification_state_manager.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = 'main_screen';

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Consumer<RestaurantStateManager>(
      builder: (BuildContext context, RestaurantStateManager restaurantStateManager, Widget? child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blueGrey.shade900,
            child: const Icon(CupertinoIcons.add, color: Colors.white,),
            onPressed: () {
          },),
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
                    const Text('20PRO'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      heroTag: "btn1",
                      onPressed: () {
                        setState(() {
                          _pageIndex = 0;
                          restaurantStateManager.updateBookingStatus(BookingDTOStatusEnum.CONFERMATO);
                        });
                      },
                      mini: _pageIndex != 0,
                      backgroundColor: _pageIndex == 0 ? Colors.blueGrey.shade900 : Colors.grey.shade100, // Set background color based on selection
                      foregroundColor: _pageIndex == 0 ? Colors.white : Colors.black, // Set icon color based on selection
                      child: const badges.Badge(
                        badgeStyle: badges.BadgeStyle(
                            badgeColor: Colors.green,
                        ),
                          badgeContent: Text(
                            '1',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          child: Icon(CupertinoIcons.calendar)
                      ),
                    ),
                    const SizedBox(width: 15),
                    FloatingActionButton(
                      heroTag: "btn2",
                      onPressed: () {
                        setState(() {
                          _pageIndex = 1;
                        });
                      },
                      mini: _pageIndex != 1, // Set to mini if not selected
                      backgroundColor: _pageIndex == 1 ? Colors.blueGrey.shade900 : Colors.grey.shade100, // Set background color based on selection
                      foregroundColor: _pageIndex == 1 ? Colors.white : Colors.black, // Set icon color based on selection
                      child: badges.Badge(
                          badgeContent: Text(
                            restaurantStateManager.allActiveBookings!.length.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          child: Icon(CupertinoIcons.globe)
                      ),
                    ),
                    const SizedBox(width: 15),
                    FloatingActionButton(
                      heroTag: "btn4",
                      onPressed: () {
                        setState(() {
                          _pageIndex = 2;
                          restaurantStateManager.updateBookingStatus(BookingDTOStatusEnum.ELIMINATO);
                        });
                      },
                      mini: _pageIndex != 2, // Set to mini if not selected
                      backgroundColor: _pageIndex == 2 ? Colors.blueGrey.shade900 : Colors.grey.shade100, // Set background color based on selection
                      foregroundColor: _pageIndex == 2 ? Colors.white : Colors.black, // Set icon color based on selection
                      child: const Icon(CupertinoIcons.clear_circled_solid, color: Colors.red,),
                    ),
                    const SizedBox(width: 15),
                    FloatingActionButton(
                      heroTag: "btn2",
                      onPressed: () {
                        setState(() {
                          _pageIndex = 3;
                        });
                      },
                      mini: _pageIndex != 3, // Set to mini if not selected
                      backgroundColor: _pageIndex == 3 ? Colors.blueGrey.shade900 : Colors.grey.shade100, // Set background color based on selection
                      foregroundColor: _pageIndex == 3 ? Colors.white : Colors.black, // Set icon color based on selection
                      child: const badges.Badge(
                          badgeContent: Text(
                            '1',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          child: Icon(CupertinoIcons.clock)
                      ),
                    ),
                    const SizedBox(width: 15),

                  ],
                ),
                const SizedBox(width: 0,)
              ],
            ),
          ),
          body: Stack(
            children: [
              // Display the selected screen based on button index
              getPageByIndex(_pageIndex),
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
                          const Text('Powerade by ', style: TextStyle(fontSize: 6),),
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

  getPageByIndex(int pageIndex) {

    switch(pageIndex){
      case 0:
        return const BookingScreen();
      case 1:
        return const BookingManager();
      case 2:
        return const BookingScreen();
      case 3:
        return const FastQueue();

    }
  }
}
