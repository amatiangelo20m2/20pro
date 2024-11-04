import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/app/core/notification/state_manager/notification_state_manager.dart';
import 'package:intl/intl.dart';

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
            'You are all caught up!',
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
                leading: const CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Icon(Icons.notifications, color: Colors.white),
                ),
                title: Text(
                  notification.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(notification.body, maxLines: 2, overflow: TextOverflow.ellipsis),
                trailing: Text(
                  _formatDate(notification.dateReceived),
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  String _formatDate(String date) {
    final DateTime parsedDate = DateTime.parse(date);
    return DateFormat('dd MMM yy\n    HH:mm').format(parsedDate);
  }
}
