import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  List<BookingDTO>? _allBookings = [];

  List<FormDTO>? _currentBranchForms = [];

  // GETTER METHODS
  RestaurantDTO? get restaurantConfiguration => _restaurantConfiguration;
  BookingControllerApi get bookingControllerApi => _bookingControllerApi;
  List<BookingDTO>? get allBookings => _allBookings;
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
    final prefs = await SharedPreferences.getInstance();

    // Save a String value
    await prefs.setString('branchCode', _currentEmployee!.branchCode!);

    _restaurantConfiguration = await _restaurantControllerApi.retrieveConfiguration(_currentEmployee!.branchCode!);
    _currentBranchForms = await _formControllerApi.retrieveByBranchCode(_currentEmployee!.branchCode!);
    selectBookingForCurrentDay(dateTime);
    fetchAllBookings();
    notifyListeners();
  }

  Future<void> refresh(DateTime currentDateTime) async {

    _restaurantConfiguration = await _restaurantControllerApi.retrieveConfiguration(_currentEmployee!.branchCode!);
    _currentBranchForms = await _formControllerApi.retrieveByBranchCode(_currentEmployee!.branchCode!);
    selectBookingForCurrentDay(currentDateTime);
    fetchAllBookings();
    notifyListeners();
  }

  List<BookingDTO>? get currentBookings {
    return _currentBookings;
  }

  updateBooking(BookingDTO bookingDTO) async {
    // Make the API call to update the booking

    BookingDTO? bookingDTOUpdated = await _bookingControllerApi.updateBooking(bookingDTO);
    refresh(DateTime.now());
  }


  Future<void> selectBookingForCurrentDay(DateTime dateTime) async {
    _currentBookings!.clear();
    _currentBookings = _allBookings!.where((element) => isSameDay(element.bookingDate!, dateTime)).toList();
    notifyListeners();
  }

  retrieveTotalGuestsNumberForDayAndActiveBookings(DateTime day) {
    return (_allBookings!.where((element) =>
    isSameDay(element.bookingDate!, day) && element.status == BookingDTOStatusEnum.CONFERMATO)
        .toList().fold(0, (total, booking) => total
        + (booking.numGuests ?? 0))).toString();
  }

  Future<void> fetchAllBookings() async {
    _allBookings = await _bookingControllerApi
        .retrieveBookingByStatusAndBranchCode(_currentEmployee!.branchCode!,
        format_yyyy_MM_dd.format(DateTime.now().subtract(Duration(days: 14))),
        format_yyyy_MM_dd.format(DateTime.now().add(const Duration(days: 360))));
    notifyListeners();
  }

  Future<void> createBooking() async {

    BookingDTO? bookingDTO = await _bookingControllerApi.create(BookingDTO(
        bookingId: 123,
        formCode: '',
        branchCode: currentEmployee!.branchCode!,
        bookingCode: '',
        bookingDate: DateTime.now(),
        timeSlot: TimeSlot(
          bookingHour: DateTime.now().hour,
          bookingMinutes: DateTime.now().minute + 1,
        ),
        numGuests: 4,
        status: BookingDTOStatusEnum.LISTA_ATTESA,
        specialRequests: "Please prepare a high chair.",
        customer: CustomerDTO(
            firstName: 'Angelo',
            lastName: 'Amati',
            phone: '3454937047',
            prefix: '39',
            email: 'amati.angelo90@gmail.com'
        ),
        createdAt: DateTime.now(),
        timeWaitingFastQueueMinutes: 1,
        bookingSource: BookingDTOBookingSourceEnum.WEB,
        comingWithDogs: false
    ));

    refresh(DateTime.now());

  }
}
