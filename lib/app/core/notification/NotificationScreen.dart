import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ventipro/app/core/notification/state_manager/notification_state_manager.dart';

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
      appBar: AppBar(title: const Text('Notifications')),
      body: notificationProvider.notifications.isEmpty
          ? const Center(child: Text('No notifications'))
          : ListView.builder(
        itemCount: notificationProvider.notifications.length,
        itemBuilder: (context, index) {
          final notification = notificationProvider.notifications[index];
          return ListTile(
            title: Text(notification.title),
            subtitle: Text(notification.body),
            trailing: Text(notification.dateReceived),
            onLongPress: () => notificationProvider.deleteNotification(notification.id!),
          );
        },
      ),
    );
  }
}
