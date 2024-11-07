import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/app/core/notification/state_manager/notification_state_manager.dart';
import 'package:intl/intl.dart';
import 'package:badges/badges.dart' as badges;

class NotificationsPage extends StatefulWidget {
  static final String routeName = 'notification_screen';

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    final notificationProvider = Provider.of<NotificationStateManager>(context);

    return Scaffold(

      appBar: AppBar(
        title: const Text('Notifiche', style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
             notificationProvider.deleteAll();
          }, icon: const Icon(CupertinoIcons.delete))
        ],
      ),
      body: notificationProvider.notifications.isEmpty
          ? _buildEmptyState()
          : _buildNotificationList(notificationProvider),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.notifications_off, size: 100, color: Colors.grey.shade400),
          const SizedBox(height: 20),
          Text(
            'No Notifications',
            style: TextStyle(fontSize: 20, color: Colors.grey.shade600),
          ),
          const SizedBox(height: 10),
          Text(
            'Nessuna notifica in arrivo',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationList(NotificationStateManager notificationProvider) {

    return AnimatedList(
      initialItemCount: notificationProvider.notifications.length,
      itemBuilder: (context, index, animation) {
        final notification = notificationProvider.notifications[index];
        return SizeTransition(
          sizeFactor: animation,
          child: Dismissible(
            key: Key(notification.id.toString()),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              notificationProvider.deleteNotification(notification.id!);
              AnimatedList.of(context).removeItem(
                index,
                    (context, animation) => Container(), // Empty animation on delete
              );
            },
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            child: Card(
              surfaceTintColor: Colors.white,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey.withOpacity(0.1),
                  child: badges.Badge(

                      showBadge: notification.read == '0',
                      badgeAnimation: const badges.BadgeAnimation.scale(),
                      child: Icon(Icons.notifications, color: Colors.blueGrey.shade700)),
                ),
                title: Text(
                  notification.title,
                  style:  TextStyle(fontSize: 13, color: Colors.blueGrey.shade900),
                ),
                subtitle: Text(notification.body,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 11),),
                trailing: Text(
                  _formatDate(notification.dateReceived),
                  style: TextStyle(fontSize: 10, color: Colors.blueGrey.shade900),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  String _formatDate(String date) {
    if(date.isEmpty){
      return 'Illegal date';
    }
    final DateTime parsedDate = DateTime.parse(date);
    return DateFormat('dd MMM yy\n    HH:mm').format(parsedDate);
  }
}
