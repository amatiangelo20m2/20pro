import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../state_manager/restaurant_state_manager.dart';
import '../booking_card.dart';

class BookingManager extends StatefulWidget {
  const BookingManager({super.key});

  @override
  State<BookingManager> createState() => _BookingManagerState();
}

class _BookingManagerState extends State<BookingManager> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RestaurantStateManager>(
      builder: (BuildContext context,
          RestaurantStateManager restaurantStateManager,
          Widget? child) {

        return RefreshIndicator(

          onRefresh: () async {
            await restaurantStateManager.refresh(DateTime.now());
          },
          child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 160),
            itemCount: restaurantStateManager.toManageBookings!.length,
            itemBuilder: (context, index) {
              return ReservationCard(booking: restaurantStateManager.toManageBookings![index],
                formDTO: restaurantStateManager.currentBranchForms!.where((element) => element.formCode
                    == restaurantStateManager.toManageBookings![index].formCode).first,);
            },
          ),
        );
      },
    );
  }
}
