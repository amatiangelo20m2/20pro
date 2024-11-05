import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:ventipro/api/restaurant_client/lib/api.dart';
import 'package:ventipro/global/style.dart';

import '../environment_config.dart';

class RestaurantStateManager extends ChangeNotifier {

  DateFormat format_yyyy_MM_dd = DateFormat('yyyy-MM-dd');

  late ApiClient _restaurantClient;

  late RestaurantControllerApi _restaurantControllerApi;
  late BookingControllerApi _bookingControllerApi;
  late FormControllerApi _formControllerApi;

  RestaurantDTO? _restaurantConfiguration;

  EmployeeDTO? _currentEmployee;

  List<BookingDTO>? _currentBookings = [];
  List<FormDTO>? _currentBranchForms = [];

  List<BookingDTO>? _allActiveBookings = [];

  // GETTER METHODS
  RestaurantDTO? get restaurantConfiguration => _restaurantConfiguration;
  List<BookingDTO>? get allActiveBookings => _allActiveBookings;
  ApiClient get restaurantClient => _restaurantClient;
  RestaurantControllerApi get restaurantControllerApi => _restaurantControllerApi;
  EmployeeDTO? get currentEmployee => _currentEmployee;
  List<FormDTO>? get currentBranchForms => _currentBranchForms;

  RestaurantStateManager() {
    _initializeClient();
  }

  Future<void> _initializeClient() async {
    print('Initialize client with $customBasePathRestaurant. Each call will be redirect to this url.');

    _restaurantClient = ApiClient(basePath: customBasePathRestaurant);
    _restaurantControllerApi = RestaurantControllerApi(_restaurantClient);
    _bookingControllerApi = BookingControllerApi(_restaurantClient);
    _formControllerApi = FormControllerApi(_restaurantClient);
  }

  Future<void> setCurrentEmployee(EmployeeDTO employee, DateTime dateTime) async {
    _currentEmployee = employee;
    _restaurantConfiguration = await _restaurantControllerApi.retrieveConfiguration(_currentEmployee!.branchCode!);
    _currentBranchForms = await _formControllerApi.retrieveByBranchCode(_currentEmployee!.branchCode!);
    selectBookingForCurrentDay(dateTime);
    _allActiveBookings = await _bookingControllerApi
        .retrieveBookingByStatusAndBranchCode(_currentEmployee!.branchCode!,
        BookingDTOStatusEnum.CONFERMATO.value,
        format_yyyy_MM_dd.format(DateTime.now()),
        format_yyyy_MM_dd.format(DateTime.now()));
    notifyListeners();
  }

  Future<void> refresh(DateTime currentDateTime) async {
    _restaurantConfiguration = await _restaurantControllerApi.retrieveConfiguration(_currentEmployee!.branchCode!);
    _currentBranchForms = await _formControllerApi.retrieveByBranchCode(_currentEmployee!.branchCode!);
    selectBookingForCurrentDay(currentDateTime);
    _allActiveBookings = await _bookingControllerApi
        .retrieveBookingByStatusAndBranchCode(_currentEmployee!.branchCode!,
        BookingDTOStatusEnum.CONFERMATO.value,
        format_yyyy_MM_dd.format(DateTime.now()),
        format_yyyy_MM_dd.format(DateTime.now()));
    notifyListeners();
  }

  List<BookingDTO>? get currentBookings {
    return _currentBookings!.where((element) => element.status == currentBookingStatus).toList();
  }

  BookingDTOStatusEnum currentBookingStatus = BookingDTOStatusEnum.IN_ATTESA;

  updateBookingStatus(BookingDTOStatusEnum newStatus) {
    currentBookingStatus = newStatus;
    notifyListeners();
  }

  Future<void> selectBookingForCurrentDay(DateTime dateTime) async {
    _currentBookings = await _bookingControllerApi
        .retrieveBookingByBranchCodeAndDate(_currentEmployee!.branchCode!, format_yyyy_MM_dd.format(dateTime));
    notifyListeners();
  }

  retrieveTotalGuestsNumberForDayAndActiveBookings(DateTime day) {
    return (_allActiveBookings!.where((element) =>
        isSameDay(element.bookingDate!, day))
        .toList().fold(0, (total, booking) => total + (booking.numGuests ?? 0))).toString();
  }
}
