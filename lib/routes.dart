import 'package:flutter/cupertino.dart';

import 'app/core/notification/NotificationScreen.dart';
import 'app/core/restaurant/booking.dart';

class Routes {
  static Map<String, StatefulWidget Function(dynamic context)> routes = {
    NotificationsPage.routeName: (context) => NotificationsPage(),
  };
}