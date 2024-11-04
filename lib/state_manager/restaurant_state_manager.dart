import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:ventipro/api/restaurant_client/lib/api.dart';

import '../environment_config.dart';

class RestaurantStateManager extends ChangeNotifier {
  late ApiClient _restaurantClient;
  late RestaurantControllerApi _restaurantControllerApi;

  late BookingControllerApi _bookingControllerApi;
  EmployeeDTO? _currentEmployee;

  List<BookingDTO>? _currentBookings = []; // Field to store the logged-in employee

  RestaurantStateManager() {
    _initializeClient();
  }

  ApiClient get restaurantClient => _restaurantClient;
  RestaurantControllerApi get restaurantControllerApi => _restaurantControllerApi;

  EmployeeDTO? get currentEmployee => _currentEmployee; // Getter for the current employee

  Future<void> _initializeClient() async {
    print('Initialize client with $customBasePathRestaurant. Each call will be redirect to this url.');

    _restaurantClient = ApiClient(basePath: customBasePathRestaurant);
    _restaurantControllerApi = RestaurantControllerApi(_restaurantClient);
    _bookingControllerApi = BookingControllerApi(_restaurantClient);
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


  List<BookingDTO>? get currentBookings => _currentBookings;


  Future<void> selectBookingForCurrentDay(DateTime dateTime) async {

    String formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);

    _currentBookings = await _bookingControllerApi
        .retrieveBookingByBranchCodeAndDate(_currentEmployee!.branchCode!, formattedDate);

    notifyListeners();
  }
}
