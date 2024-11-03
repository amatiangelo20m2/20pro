import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import '../../../api/restaurant_client/lib/api.dart';

class ReservationCard extends StatelessWidget {
  final BookingDTO booking;

  ReservationCard({required this.booking});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _showSortMenu(context, booking);
      },
      child: Dismissible(
        key: Key(booking.bookingCode.toString()),
        direction: DismissDirection.horizontal,
        background: _buildSwipeBackground(
          alignment: Alignment.centerLeft,
          color: CupertinoColors.destructiveRed,
          icon: CupertinoIcons.delete,
        ),
        secondaryBackground: _buildSwipeBackground(
          alignment: Alignment.centerRight,
          color: CupertinoColors.activeGreen,
          icon: CupertinoIcons.check_mark_circled,
        ),
        child: _buildCardContent(context),
      ),
    );
  }

  Widget _buildCardContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          color: CupertinoColors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: CupertinoColors.systemGrey.withOpacity(0.2),
              blurRadius: 4.0,
              spreadRadius: 1.0,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: _buildCustomerInfo(),
              ),
              Expanded(
                flex: 2,
                child: _buildTimeBooking(context),
              ),
              Expanded(
                  flex: 1,
                  child: Icon(Icons.pets)),
              Expanded(
                flex: 2,
                child: _buildStatusButton(context),
              ),

              
            ],
          ),
        ),
      ),
    );
  }

  Row _buildCustomerInfo() {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                booking.customer?.firstName ?? '',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey.shade900,
                ),
              ),
              Text(
                booking.customer?.lastName ?? '',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey.shade900,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row _buildTimeBooking(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${NumberFormat("00").format(booking.timeSlot?.bookingHour)}:${NumberFormat("00").format(booking.timeSlot?.bookingMinutes)}',
          style: const TextStyle(
            fontSize: 15,
            color: CupertinoColors.label,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  CupertinoButton _buildStatusButton(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      color: _getStatusColor(booking.status?.value.toString()),
      borderRadius: BorderRadius.circular(8),
      onPressed: () {},
      child: Text(
        booking.status!.value.toString(),
        style: TextStyle(
          color: CupertinoColors.white,
          fontSize: 12,
        ),
      ),
    );
  }

  Row _buildGuestInfo() {
    return Row(
      children: [
        Icon(CupertinoIcons.person_2_fill, color: Colors.blueGrey.shade900),
        const SizedBox(width: 5),
        Text(
          '${booking.numGuests ?? 0} Ospiti',
          style: TextStyle(
            fontSize: 16,
            color: CupertinoColors.label,
          ),
        ),
        const Spacer(),
        if (booking.comingWithDogs ?? false)
          Icon(CupertinoIcons.paw, color: CupertinoColors.systemBrown),
      ],
    );
  }

  Text _buildSpecialRequests() {
    return Text(
      'Richieste speciali: ${booking.specialRequests}',
      style: TextStyle(
        fontSize: 14,
        color: CupertinoColors.secondaryLabel,
      ),
    );
  }

  // Helper to create swipe backgrounds
  Widget _buildSwipeBackground({required Alignment alignment, required Color color, required IconData icon}) {
    return Container(
      alignment: alignment,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Icon(icon, color: color, size: 28),
    );
  }

  Color _getStatusColor(String? status) {
    switch (status?.toLowerCase()) {
      case 'confirmed':
        return CupertinoColors.activeGreen;
      case 'pending':
        return CupertinoColors.systemYellow;
      case 'cancelled':
        return CupertinoColors.destructiveRed;
      default:
        return CupertinoColors.systemGrey;
    }
  }
  void _showSortMenu(BuildContext context, BookingDTO booking) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text('Gestisci prenotazione di\n${booking.customer!.firstName!} ${booking.customer!.lastName!}'),
                  Text('${booking.customer!.phone!}'),
                  Text('${booking.customer!.email!}'),
                ],
              ),
            ),
            Positioned(
                right: 0,
                child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.phone)))
          ],
        ),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context, 'arrival_time');
              print("Sorting by arrival time");
            },
            child: Text('Arrivato'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context, 'booking_date');
              print("Sorting by booking date");
            },
            child: Text('Rifiuta'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context, 'name');
              print("Sorting by name");
            },
            child: Text('Cancella'),
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
