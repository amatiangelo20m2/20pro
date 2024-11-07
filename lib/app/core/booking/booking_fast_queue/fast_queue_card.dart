import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/global/style.dart';
import 'package:ventipro/state_manager/restaurant_state_manager.dart';

import 'package:ventipro/api/restaurant_client/lib/api.dart';

import '../../notification/model/notification_entity.dart';
import '../../notification/state_manager/notification_state_manager.dart';

class FastQueueCard extends StatefulWidget {
  final BookingDTO booking;

  const FastQueueCard({super.key, required this.booking});

  @override
  State<FastQueueCard> createState() => _FastQueueCardState();
}

class _FastQueueCardState extends State<FastQueueCard> {
  Timer? _timer;
  Duration _timeElapsed = Duration.zero;
  DateTime _targetTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _targetTime  = widget.booking.createdAt!.add(
      Duration(minutes: widget.booking.timeWaitingFastQueueMinutes!),
    );

    _timeElapsed = _targetTime.difference(DateTime.now());

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _timeElapsed -= const Duration(seconds: 1);
        if (_timeElapsed <= const Duration(minutes: -30)) {
          _timer?.cancel();
          _timeElapsed = const Duration(minutes: -30); // Cap _timeElapsed at -10 minutes
        }
      });
    });
  }

  String _formatTime(Duration duration) {
    // Format duration to mm:ss
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours.remainder(24));
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$hours:$minutes:$seconds";
  }


  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showSortMenu(context, widget.booking);
      },
      child: Dismissible(
        key: Key(widget.booking.bookingCode.toString()),
        direction: DismissDirection.horizontal,
        confirmDismiss: (direction) async {
          if (direction == DismissDirection.endToStart) {
            return await _confirmReservation(context);
          } else if (direction == DismissDirection.startToEnd) {
            return await _cancelReservation(context);
          }
          return false;
        },
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

  Future<bool?> _confirmReservation(BuildContext context) async {

    widget.booking.status = BookingDTOStatusEnum.ARRIVATO;
    _showSnackbar(context, 'Reservation confirmed.');
    return false; // Prevent automatic dismissal
  }

  Future<bool?> _cancelReservation(BuildContext context) async {
    widget.booking.status = BookingDTOStatusEnum.NON_ARRIVATO;
    _showSnackbar(context, 'Reservation cancelled.');
    return false; // Prevent automatic dismissal
  }

  void _showSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(flex: 3, child: _buildCustomerInfo()),
              Expanded(
                flex: 2,
                child: _buildWidgetByElapsedTime(),
              ),
              Expanded(flex: 1, child: _buildGuestInfo()),
              Expanded(flex: 2, child: _buildTimeBooking(context)),

              Expanded(flex: 1,
                child: Consumer<NotificationStateManager>(
                  builder: (BuildContext context, NotificationStateManager value, Widget? child) {
                    return IconButton(onPressed: () {

                      value.addNotification(NotificationModel(title: 'sdffds', body: 'dsffsd', dateReceived: '2024-12-12'));
                    }, icon: const Icon(CupertinoIcons.paperplane),);
                  },
                ),),
              Expanded(flex: 2, child: _buildStatusButton(context)),
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
                widget.booking.customer?.firstName ?? '',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blueGrey.shade900,
                ),
              ),
              Text(
                widget.booking.customer?.lastName ?? '',
                style: TextStyle(
                  fontSize: 11,
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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(CupertinoIcons.clock, color: Colors.blueGrey,),
        Text(
          ' ${NumberFormat("00").format(widget.booking.timeSlot?.bookingHour)}:${NumberFormat("00").format(widget.booking.timeSlot?.bookingMinutes)}',
          style: TextStyle(
            fontSize: 13,
            color: Colors.blueGrey.shade900,
          ),
        ),
      ],
    );
  }

  CupertinoButton _buildStatusButton(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      color: getStatusColor(widget.booking.status!),
      borderRadius: BorderRadius.circular(8),
      onPressed: () {

      },
      child: Text(
        widget.booking.status!.value.toString().replaceAll('_', ' '),
        style: const TextStyle(
          color: CupertinoColors.white,
          fontSize: 10,
        ),
      ),
    );
  }

  Row _buildGuestInfo() {
    return Row(
      children: [
        Icon(CupertinoIcons.person_2, color: Colors.blueGrey.shade900),
        const SizedBox(width: 5),
        Text(
          ' ${widget.booking.numGuests ?? 0}',
          style: const TextStyle(
            fontSize: 13,
            color: CupertinoColors.label,
          ),
        ),
      ],
    );
  }

  Widget _buildSwipeBackground({required Alignment alignment, required Color color, required IconData icon}) {
    return Container(
      alignment: alignment,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Icon(icon, color: color, size: 28),
    );
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
                  Text(booking.customer!.phone!),
                  Text(booking.customer!.email!),
                  Text(booking.formCode!),
                ],
              ),
            ),
            Positioned(
              right: 0,
              child: IconButton(onPressed: () {

              }, icon: const Icon(CupertinoIcons.phone)),
            ),
          ],
        ),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              booking.status = BookingDTOStatusEnum.CONFERMATO;
              Provider.of<RestaurantStateManager>(context, listen: false)
                  .updateBooking(booking);
              Navigator.pop(context, null);
            },
            child: const Text('Conferma prenotazione'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              booking.status = BookingDTOStatusEnum.ARRIVATO;
              Provider.of<RestaurantStateManager>(context, listen: false)
                  .updateBooking(booking);
              Navigator.pop(context, null);

            },
            child: const Text('Segna come arrivato'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              booking.status = BookingDTOStatusEnum.RIFIUTATO;
              Provider.of<RestaurantStateManager>(context, listen: false)
                  .updateBooking(booking);
              Navigator.pop(context, null);

            },
            child: const Text('Rifiuta prenotazione'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              booking.status = BookingDTOStatusEnum.ELIMINATO;
              Provider.of<RestaurantStateManager>(context, listen: false)
                  .updateBooking(booking);
              Navigator.pop(context, null);
            },
            child: const Text('Cancella'),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            // Close without any action
          },
          isDefaultAction: true,
          child: const Text('Indietro'),
        ),
      ),
    );
  }

  Widget _buildWidgetByElapsedTime() {
    if (_timeElapsed > const Duration(seconds: 3)) {
      // Case 1: Time elapsed is greater than 3 seconds
      return Text(
        _formatTime(_timeElapsed), // Display time in mm:ss format
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      );
    } else if (_timeElapsed > Duration.zero && _timeElapsed <= const Duration(seconds: 3)) {
      // Case 2: Time elapsed is between 0 and 3 seconds
      return Lottie.asset('assets/lotties/321go.json', height: 45);
    } else if(_timeElapsed < const Duration(minutes: -10) && _timeElapsed > const Duration(minutes: -23)) {
      // Case 3: Time elapsed is less than or equal to 0
      return Column(
        children: [
          Lottie.asset('assets/lotties/call_late.json', height: 45),
           Text('In ritardo di ${_timeElapsed.inMinutes * -1} minuti', style: const TextStyle(fontSize: 5),)
        ],
      );
    }else if(_timeElapsed < const Duration(minutes: -23)){
      return Column(
        children: [
          Lottie.asset('assets/lotties/call_too_late.json', height: 45),
          const Text('Cliente scomparso', style: TextStyle(fontSize: 5),)
        ],
      );
    } else {
    return Lottie.asset('assets/lotties/call.json', height: 45);
    }
  }

}
