import 'package:flutter/cupertino.dart';

import 'app/core/notification/notification_screen.dart';

class Routes {
  static Map<String, StatefulWidget Function(dynamic context)> routes = {
    NotificationsPage.routeName: (context) => NotificationsPage(),
  };
}