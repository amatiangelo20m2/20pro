import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/api/restaurant_client/lib/api.dart';
import 'package:badges/badges.dart' as badges;
import 'package:ventipro/app/core/booking/booking_fast_queue/fast_queue.dart';
import 'package:ventipro/global/style.dart';
import 'package:ventipro/state_manager/restaurant_state_manager.dart';
import 'booking/booking_confirmed/booking.dart';
import 'booking/booking_processed/booking_processed.dart';
import 'booking/booking_to_manage/booking_to_manage.dart';
import 'booking/edited_by_customer/edited_by_customer.dart';
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
      builder: (BuildContext context,
          RestaurantStateManager restaurantStateManager,
          Widget? child) {
        return Scaffold(

          floatingActionButton: _pageIndex == 2 ? FloatingActionButton(
            backgroundColor: getStatusColor(BookingDTOStatusEnum.LISTA_ATTESA),
              onPressed: (){},
            child: Icon(CupertinoIcons.add, color: Colors.white,)) : null,
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: TextStyle(color: Colors.black),
           unselectedLabelStyle: TextStyle(color: Colors.blueGrey.shade600),
           onTap: (index){
              setState(() {
                _pageIndex = index;
              });
            },
            items: [
              _buildBottomNavigationBarItem(
                svgPath: 'assets/svg/calendar.svg',
                label: BookingDTOStatusEnum.CONFERMATO.value,
                badgeColor: getStatusColor(BookingDTOStatusEnum.CONFERMATO),
                badgeCount: restaurantStateManager.allBookings!.where((element) => element.status == BookingDTOStatusEnum.CONFERMATO).length,
              ),
              _buildBottomNavigationBarItem(
                svgPath: 'assets/svg/hourglass.svg',
                label: BookingDTOStatusEnum.IN_ATTESA.value,
                badgeColor: getStatusColor(BookingDTOStatusEnum.IN_ATTESA),
                badgeCount: restaurantStateManager.allBookings!.where((element) => element.status == BookingDTOStatusEnum.IN_ATTESA).length,
              ),
              _buildBottomNavigationBarItem(
                svgPath: 'assets/svg/fast_queue.svg',
                label: BookingDTOStatusEnum.LISTA_ATTESA.value,
                badgeColor: getStatusColor(BookingDTOStatusEnum.LISTA_ATTESA),
                badgeCount: restaurantStateManager.allBookings!.where((element) => element.status == BookingDTOStatusEnum.LISTA_ATTESA).length,
              ),
              _buildBottomNavigationBarItem(
                svgPath: 'assets/svg/booking_edited.svg',
                label: BookingDTOStatusEnum.MODIFICATO_DA_UTENTE.value,
                badgeColor: Colors.purple,
                badgeCount: restaurantStateManager.allBookings!.where((element) => element.status == BookingDTOStatusEnum.MODIFICATO_DA_UTENTE).length,
              ),
              _buildBottomNavigationBarItem(
                svgPath: 'assets/svg/booking_done.svg',
                label: 'Processate',
                badgeColor: Colors.blue,
                badgeCount: 0,
              ),
          ],),
          drawer: const Drawer(
            child: Column(
              children: [
                ListTile(
                  title: Text('20m2'),
                  subtitle: Text('xxx'),
                  leading: Icon(CupertinoIcons.home),
                ),
                ListTile(
                  title: Text('I tuoi clienti'),
                  subtitle: Text('xxx'),
                  leading: Icon(CupertinoIcons.person_2),
                ),
                ListTile(
                  title: Text('Chat diretta'),
                  subtitle: Text('xxx'),
                  leading: Icon(CupertinoIcons.chat_bubble_2),
                ),

              ],
            ),
          ),
          appBar: AppBar(
            surfaceTintColor: Colors.white,
            backgroundColor: Colors.white,
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  IconButton(onPressed: (){},icon: Icon(CupertinoIcons.calendar_today, color: Colors.blueGrey.shade900,),),
                  IconButton(onPressed: (){},icon: Icon(CupertinoIcons.shopping_cart, color: Colors.blueGrey.shade900,),),
                  IconButton(onPressed: (){},icon: Icon(CupertinoIcons.person_2_square_stack, color: Colors.blueGrey.shade900,),),

                  Consumer<NotificationStateManager>(
                    builder: (BuildContext context, NotificationStateManager value, Widget? child) {
                      return IconButton(onPressed: () {
                        Navigator.pushNamed(context, NotificationsPage.routeName);
                      }, icon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: badges.Badge(
                          showBadge: value.notifications.isNotEmpty,
                            badgeContent: Text(value.notifications.length.toString(), style: const TextStyle(color: Colors.white, fontSize: 11),),
                            position: badges.BadgePosition.topEnd(),
                            child: value.notifications.isNotEmpty ? Lottie.asset('assets/lotties/alarm.json') : Icon(CupertinoIcons.bell)),
                      )
                      );
                    },
                  ),
                ],
              ),
            ],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/svg/logo_20_black.svg',
                  width: 70,
                ),
                FloatingActionButton(
                  mini: true,
                  heroTag: "btn1",
                  onPressed: () {

                  },
                  backgroundColor: Colors.green,
                  child: Icon(FontAwesomeIcons.whatsapp, color: Colors.white, size: 30,),
                ),

              ],
            ),
          ),
          body: getPageByIndex(_pageIndex),
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
        return const FastQueue();
      case 3:
        return const BookingEditedByCustomer();
      case 4:
        return const BookingProcessed();


    }
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required String svgPath,
    required String label,
    required Color badgeColor,
    required int badgeCount,

  }) {
    return BottomNavigationBarItem(
      icon: badges.Badge(
        showBadge: badgeCount > 0,
        badgeStyle: badges.BadgeStyle(badgeColor: badgeColor),
        badgeContent: Text(
          badgeCount.toString(),
          style: const TextStyle(color: Colors.white, fontSize: 10),
        ),
        child: SvgPicture.asset(
          svgPath,
          height: 23,
        ),
      ),
      label: label,

    );
  }
}
