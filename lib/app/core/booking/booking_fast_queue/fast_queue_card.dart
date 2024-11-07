import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/global/style.dart';
import 'package:ventipro/state_manager/restaurant_state_manager.dart';

import 'package:ventipro/api/restaurant_client/lib/api.dart';

import '../../notification/model/notification_entity.dart';
import '../../notification/state_manager/notification_state_manager.dart';

class FastQueueCard extends StatefulWidget {
  final BookingDTO booking;

  const FastQueueCard({required this.booking});

  @override
  State<FastQueueCard> createState() => _FastQueueCardState();
}

class _FastQueueCardState extends State<FastQueueCard> {
  Timer? _timer;
  Duration _timeElapsed = Duration.zero;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    // Calculate initial time difference
    final currentTime = DateTime.now();
    currentTime.add(Duration(minutes: widget.booking.timeWaitingFastQueueMinutes!));
    _timeElapsed = currentTime.difference(widget.booking.createdAt!);

    // Start the timer to update every second
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _timeElapsed -= const Duration(seconds: 1);
        if (_timeElapsed <= Duration.zero) {
          // Stop the timer and set _timeElapsed to exactly zero
          _timer?.cancel();
          _timeElapsed = Duration.zero;
        }
      });
    });
  }

  String _formatTime(Duration duration) {
    // Format duration to mm:ss
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
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

    widget.booking.status = BookingDTOStatusEnum.CONFERMATO;
    _showSnackbar(context, 'Reservation confirmed.');
    return false; // Prevent automatic dismissal
  }

  Future<bool?> _cancelReservation(BuildContext context) async {
    widget.booking.status = BookingDTOStatusEnum.ELIMINATO;
    _showSnackbar(context, 'Reservation cancelled.');
    return false; // Prevent automatic dismissal
  }

  void _showSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 2),
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
              offset: Offset(0, 2), // changes position of shadow
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
                child: Column(
                  children: [
                    Text(
                      _formatTime(_timeElapsed), // Display time in mm:ss format
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),

                    Text(
                      widget.booking.createdAt!.toString(), // Display time in mm:ss format
                      style: const TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${widget.booking.timeWaitingFastQueueMinutes} minuti', // Display time in mm:ss format
                      style: const TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
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
        Column(
          children: [
            Text(
              ' ${NumberFormat("00").format(widget.booking.timeSlot?.bookingHour)}:${NumberFormat("00").format(widget.booking.timeSlot?.bookingMinutes)}',
              style: TextStyle(
                fontSize: 13,
                color: Colors.blueGrey.shade900,
              ),
            ),
            Text(
              italianDateFormat.format(widget.booking.bookingDate!),
              style: TextStyle(
                fontSize: 5,
                color: Colors.blueGrey.shade900,
              ),
            ),
            Text(
              widget.booking.bookingDate!.toLocal().toString(),
              style: TextStyle(
                fontSize: 5,
                color: Colors.blueGrey.shade900,
              ),
            ),
            Text(
              widget.booking.bookingDate!.toUtc().toString(),
              style: const TextStyle(
                fontSize: 5,
              ),
            ),
          ],
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
          fontSize: 12,
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

              }, icon: Icon(CupertinoIcons.phone)),
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
            child: Text('Conferma prenotazione'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              booking.status = BookingDTOStatusEnum.ARRIVATO;
              Provider.of<RestaurantStateManager>(context, listen: false)
                  .updateBooking(booking);
              Navigator.pop(context, null);

            },
            child: Text('Segna come arrivato'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              booking.status = BookingDTOStatusEnum.RIFIUTATO;
              Provider.of<RestaurantStateManager>(context, listen: false)
                  .updateBooking(booking);
              Navigator.pop(context, null);

            },
            child: Text('Rifiuta prenotazione'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              booking.status = BookingDTOStatusEnum.ELIMINATO;
              Provider.of<RestaurantStateManager>(context, listen: false)
                  .updateBooking(booking);
              Navigator.pop(context, null);
            },
            child: Text('Cancella'),
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
}
