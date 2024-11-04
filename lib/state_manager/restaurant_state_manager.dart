import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:ventipro/api/restaurant_client/lib/api.dart';

import '../environment_config.dart';

class RestaurantStateManager extends ChangeNotifier {
  late ApiClient _restaurantClient;

  late RestaurantControllerApi _restaurantControllerApi;
  late BookingControllerApi _bookingControllerApi;
  late FormControllerApi _formControllerApi;


  EmployeeDTO? _currentEmployee;

  List<BookingDTO>? _currentBookings = []; // Field to store the logged-in employee
  List<FormDTO>? _currentBranchForms = []; // Field to store the logged-in employee

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
    _formControllerApi = FormControllerApi(_restaurantClient);
  }

  Future<void> setCurrentEmployee(EmployeeDTO employee, DateTime dateTime) async {
    _currentEmployee = employee;
    _currentBranchForms = await _formControllerApi.retrieveByBranchCode(_currentEmployee!.branchCode!);
    selectBookingForCurrentDay(dateTime);
    notifyListeners();
  }

  Future<void> refresh(DateTime currentDateTime) async {
    _currentBranchForms = await _formControllerApi.retrieveByBranchCode(_currentEmployee!.branchCode!);
    selectBookingForCurrentDay(currentDateTime);
    notifyListeners();
  }

  List<BookingDTO>? get currentBookings => _currentBookings;
  List<FormDTO>? get currentBranchForms => _currentBranchForms;

  Future<void> selectBookingForCurrentDay(DateTime dateTime) async {
    String formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);

    _currentBookings = await _bookingControllerApi
        .retrieveBookingByBranchCodeAndDate(_currentEmployee!.branchCode!, formattedDate);

    notifyListeners();
  }
}
