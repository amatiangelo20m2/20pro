import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/api/restaurant_client/lib/api.dart';

import '../../../../global/style.dart';
import '../../../../state_manager/restaurant_state_manager.dart';
import '../booking_card.dart';
import 'fast_queue_card.dart';

class FastQueue extends StatefulWidget {
  const FastQueue({super.key});

  @override
  State<FastQueue> createState() => _FastQueueState();
}

class _FastQueueState extends State<FastQueue> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RestaurantStateManager>(
      builder: (BuildContext context, RestaurantStateManager restaurantStateManager, Widget? child) {
        // Filter and group bookings by date
        final Map<DateTime, List<BookingDTO>> groupedBookings = _groupBookingsByDate(
          restaurantStateManager.allBookings!
              .where((booking) => booking.status == BookingDTOStatusEnum.LISTA_ATTESA)
              .toList(),
        );

        return RefreshIndicator(
          onRefresh: () async {
            await restaurantStateManager.refresh(DateTime.now());
          },
          child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 160),
            itemCount: groupedBookings.keys.length,
            itemBuilder: (context, index) {
              final date = groupedBookings.keys.elementAt(index);
              final bookings = groupedBookings[date]!;

              return _buildDateGroup(date, bookings, restaurantStateManager);
            },
          ),
        );
      },
    );
  }

  Map<DateTime, List<BookingDTO>> _groupBookingsByDate(List<BookingDTO> bookings) {
    final Map<DateTime, List<BookingDTO>> groupedBookings = {};

    for (var booking in bookings) {
      final date = DateTime(booking.bookingDate!.year,
          booking.bookingDate!.month,
          booking.bookingDate!.day);

      if (!groupedBookings.containsKey(date)) {
        groupedBookings[date] = [];
      }

      groupedBookings[date]!.add(booking);
    }

    // Sort groups by date (oldest first)
    final sortedKeys = groupedBookings.keys.toList()..sort((a, b) => a.compareTo(b));

    return {for (var key in sortedKeys) key: groupedBookings[key]!};
  }

  Widget _buildDateGroup(DateTime date, List<BookingDTO> bookings, RestaurantStateManager restaurantStateManager) {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Prenotazioni di ${italianDateFormat.format(date)}'.toUpperCase(),
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ...bookings.map((booking) {
            final formDTO = restaurantStateManager.currentBranchForms!.firstWhere(
                  (form) => form.formCode == booking.formCode,
            );

            return FastQueueCard(
              booking: booking,
            );
          }),
        ],
      ),
    );
  }
}
