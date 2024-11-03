import 'package:flutter/cupertino.dart';
import 'package:ventipro/api/restaurant_client/lib/api.dart';

import '../environment_config.dart';

class RestaurantStateManager extends ChangeNotifier {
  late ApiClient _restaurantClient;
  late RestaurantControllerApi _restaurantControllerApi;

  EmployeeDTO? _currentEmployee; // Field to store the logged-in employee

  RestaurantStateManager() {
    _initializeClient();
  }

  ApiClient get restaurantClient => _restaurantClient;
  RestaurantControllerApi get restaurantControllerApi => _restaurantControllerApi;

  EmployeeDTO? get currentEmployee => _currentEmployee; // Getter for the current employee

  Future<void> _initializeClient() async {
    print('Initialize client with ' + customBasePathRestaurant + '. Each call will be redirect to this url.');

    _restaurantClient = ApiClient(basePath: customBasePathRestaurant);
    _restaurantControllerApi = RestaurantControllerApi(_restaurantClient);
  }

  void setCurrentEmployee(EmployeeDTO employee) {
    _currentEmployee = employee;
    notifyListeners(); // Notify listeners of the change
  }

  DateTime today = DateTime.now();
  DateTime selectedDate = DateTime.now();

  selectDateFromCutomCalendar(DateTime dateTime) {
    selectedDate = dateTime;
    notifyListeners();
  }
}
