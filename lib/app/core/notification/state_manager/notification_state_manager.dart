import 'package:flutter/material.dart';
import '../helper/database_helper.dart';
import '../model/notification_entity.dart';


class NotificationStateManager with ChangeNotifier {
  List<NotificationModel> _notifications = [];

  List<NotificationModel> get notifications => _notifications;

  NotificationProvider() {
    fetchNotifications(); // Load notifications initially
  }

  // Fetch all notifications from the database
  Future<void> fetchNotifications() async {
    _notifications.clear();
    _notifications = await DatabaseHelper.instance.fetchAllNotifications();
    print('Al momento ci sono queste notifiche: ' + notifications.length.toString());
    notifyListeners();
  }

  // Add a new notification
  Future<void> addNotification(NotificationModel notification) async {
    print('Create notification and fetch: ${notification.toMap()}');
    await DatabaseHelper.instance.insertNotification(notification);
    await fetchNotifications();
  }

  // Delete a notification by ID
  Future<void> deleteNotification(int id) async {
    await DatabaseHelper.instance.deleteNotification(id);
    await fetchNotifications(); // Refresh the notifications list
  }

  Future<void> deleteAll() async {
    await DatabaseHelper.instance.deleteAll();
    await fetchNotifications();
  }

  Future<void> setAllNotificationToRead(bool updateAfterQuery) async {
    await DatabaseHelper.instance.setAllNotificationToReadStatus();
    if(updateAfterQuery){
      await fetchNotifications();
    }
  }
}
