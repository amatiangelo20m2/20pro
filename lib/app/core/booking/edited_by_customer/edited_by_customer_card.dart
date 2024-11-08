import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/global/style.dart';
import 'package:ventipro/state_manager/restaurant_state_manager.dart';
import 'package:ventipro/api/restaurant_client/lib/api.dart';

class ReservationEditedByCustomerCard extends StatelessWidget {
  final BookingDTO booking;
  final List<FormDTO> formDTOs;

  const ReservationEditedByCustomerCard(
      {super.key, required this.booking, required this.formDTOs});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showSortMenu(context, booking);
      },
      child: Dismissible(
        key: Key(booking.bookingCode.toString()),
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
    booking.status = BookingDTOStatusEnum.CONFERMATO;
    _showSnackbar(context, 'Reservation confirmed.');
    return false; // Prevent automatic dismissal
  }

  Future<bool?> _cancelReservation(BuildContext context) async {
    booking.status = BookingDTOStatusEnum.ELIMINATO;
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
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(flex: 1, child: _buildCustomerInfo()),
              Expanded(flex: 1, child: _buildDateWidget()),
              Expanded(flex: 1, child: Text(getFormEmoji(formDTOs, booking))),
              Expanded(flex: 1, child: _buildGuestInfo()),
              Expanded(flex: 1, child: _buildTimeBooking(context)),

              Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.settings_solid,
                          color: Colors.blueGrey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.doc_plaintext),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.green,
                        ),
                      )
                    ],
                  )),
              Expanded(flex: 1, child: _buildStatusButton(context)),
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
                  fontSize: 14,
                  color: Colors.blueGrey.shade900,
                ),
              ),
              Text(
                booking.customer?.lastName ?? '',
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
        const Icon(
          CupertinoIcons.clock,
          color: Colors.blueGrey,
        ),
        booking.timeSlot?.bookingHour ==
                    booking.timeSlotAfterUpdate?.bookingHour &&
                booking.timeSlot?.bookingMinutes ==
                    booking.timeSlotAfterUpdate?.bookingMinutes

            ? Text(
                ' ${NumberFormat("00").format(booking.timeSlot?.bookingHour)}:${NumberFormat("00").format(booking.timeSlot?.bookingMinutes)}',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.blueGrey.shade900,
                ),
              ) : Row(
          children: [
            Text(
              ' ${NumberFormat("00").format(booking.timeSlot?.bookingHour)}:${NumberFormat("00").format(booking.timeSlot?.bookingMinutes)}',
              style: TextStyle(
                fontSize: 13,
                decoration: TextDecoration.lineThrough,
                color: Colors.redAccent.shade700,
              ),
            ),
            const Icon(Icons.arrow_forward),
            Text(
              ' ${NumberFormat("00").format(booking.timeSlotAfterUpdate?.bookingHour)}:${NumberFormat("00").format(booking.timeSlotAfterUpdate?.bookingMinutes)}',
              style: TextStyle(
                fontSize: 13,
                color: Colors.green.shade700,
              ),
            ),
          ],
        )
      ],
    );
  }

  CupertinoButton _buildStatusButton(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      color: getStatusColor(booking.status!),
      borderRadius: BorderRadius.circular(8),
      onPressed: () {},
      child: Text(
        booking.status!.value.toString().replaceAll('_', ' '),
        style: const TextStyle(
          color: CupertinoColors.white,
          fontSize: 8,
        ),
      ),
    );
  }

  Row _buildGuestInfo() {
    return Row(
      children: [
        Icon(CupertinoIcons.person_2, color: Colors.blueGrey.shade900),
        const SizedBox(width: 5),
        booking.numGuests != booking.numGuestsAfterUpdate ? Row(
          children: [
            Text(
              ' ${booking.numGuests ?? 0}',
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                fontSize: 13,
                color: Colors.redAccent.shade700,
              ),
            ),
            const Icon(Icons.arrow_forward),
            Text(
              ' ${booking.numGuestsAfterUpdate ?? 0}',
              style: TextStyle(
                fontSize: 13,
                color: Colors.green.shade700,
              ),
            ),
          ],
        ) : Text(
          ' ${booking.numGuests ?? 0}',
          style: const TextStyle(
            fontSize: 13,
            color: CupertinoColors.label,
          ),
        )

      ],
    );
  }

  Widget _buildSwipeBackground(
      {required Alignment alignment,
      required Color color,
      required IconData icon}) {
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
                  Text(
                      'Gestisci prenotazione di\n${booking.customer!.firstName!} ${booking.customer!.lastName!}'),
                  Text(booking.customer!.phone!),
                  Text(booking.customer!.email!),
                  Text(booking.formCode!),
                ],
              ),
            ),
            Positioned(
              right: 0,
              child: IconButton(
                  onPressed: () {}, icon: Icon(CupertinoIcons.phone)),
            ),
          ],
        ),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              Provider.of<RestaurantStateManager>(context, listen: false)
                  .updateBooking(BookingDTO(
                      bookingCode: booking.bookingCode,
                      numGuests: booking.numGuestsAfterUpdate,
                      timeSlot: booking.timeSlotAfterUpdate,
                      bookingDate: booking.bookingDateAfterUpdate!.add(Duration(hours: 12)),
                      status: BookingDTOStatusEnum.CONFERMATO));
              Navigator.pop(context, null);
            },
            child: const Text('Conferma modifica'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Provider.of<RestaurantStateManager>(context, listen: false)
                  .updateBooking(BookingDTO(
                      bookingCode: booking.bookingCode,
                      bookingId: booking.bookingId,
                      status: BookingDTOStatusEnum.RIFIUTATO));
              Navigator.pop(context, null);
            },
            child: Text('Rifiuta modifica'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Provider.of<RestaurantStateManager>(context, listen: false)
                  .updateBooking(BookingDTO(
                      bookingCode: booking.bookingCode,
                      bookingId: booking.bookingId,
                      status: BookingDTOStatusEnum.ELIMINATO));
              Navigator.pop(context, null);
            },
            child: Text('Elimina'),
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

  _buildDateWidget() {
    return !isSameDay(booking.bookingDate!, booking.bookingDateAfterUpdate!) ? Row(
      children: [
        Text(booking.bookingDate!.day.toString()+'/'+booking.bookingDate!.month!.toString(), style: TextStyle( decoration: TextDecoration.lineThrough,color: Colors.red),),
        Icon(Icons.arrow_forward),
        Text(booking.bookingDateAfterUpdate!.day.toString()+'/'+booking.bookingDateAfterUpdate!.month!.toString(), style: TextStyle(color: Colors.green.shade700),),
      ],
    ) : Text(booking.bookingDate!.day.toString()+'/'+booking.bookingDate!.month!.toString());
  }
}
