import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ventipro/environment_config.dart';

import 'package:ventipro/api/restaurant_client/lib/api.dart';

class CustomerStateManager extends ChangeNotifier {

  late ApiClient _restaurantClient;

  late BookingControllerApi _bookingControllerApi;

  List<CustomerDTO>? _currentCustomersList = [];


  List<CustomerDTO>? get currentCustomersList => _currentCustomersList;

  CustomerStateManager() {
    _initializeClient();
  }

  Future<void> _initializeClient() async {
    print('Initialize client with $customBasePathRestaurant. Each call will be redirect to this url.');

    final prefs = await SharedPreferences.getInstance();

    // Save a String value
    String? branchCode = await prefs.getString('branchCode');

    _restaurantClient = ApiClient(basePath: customBasePathRestaurant);
    _bookingControllerApi = BookingControllerApi(_restaurantClient);

    await retrieveCustomersListByBranchCode(branchCode!, true);


  }

  retrieveCustomersListByBranchCode(String branchCode, bool refresh) async {

    if(refresh){
      _currentCustomersList = await _bookingControllerApi.retrieveHistoricalCustomersBasedOnReservationsByBranchCode(branchCode);
    }

    notifyListeners();
  }





}