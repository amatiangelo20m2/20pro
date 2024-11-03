import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../api/restaurant_client/lib/api.dart';
import '../../../../../environment_config.dart';

class EmployeeStateManager with ChangeNotifier {

  late ApiClient _restaurantClient;
  late RestaurantControllerApi _restaurantControllerApi;
  late String userCode;
  late String branchCode;
  late String branchName;


  DateTime now = DateTime.now();

  RestaurantControllerApi get restaurantControllerApi =>
      _restaurantControllerApi;

  List<EmployeeDTO>? currentEmployeeList = [];

  EmployeeStateManager(){
    _initializeClient();
  }

  Future<void> _initializeClient() async {

    print('Initialize client with ' + customBasePathRestaurant + '. Each call will be redirect to this url.');

    _restaurantClient = ApiClient(basePath: customBasePathRestaurant);
    _restaurantControllerApi = RestaurantControllerApi(_restaurantClient);

    retrieveCurrentEmployee();
    // retrievePresenteEmployeeForCurrentBranchAndCurrentDate(branchCode, now);
  }

  retrieveCurrentEmployee() async {

    final prefs = await SharedPreferences.getInstance();

    print('Current branch code (for restaurant configuration purposes): ' + prefs.getString('branch_code').toString());
    print('User code (for notification purposes): ' + prefs.getString('user_code').toString());

    branchCode = prefs.getString('branch_code').toString();
    userCode = prefs.getString('user_code').toString();
    branchName = prefs.getString('branch_name').toString();

    RestaurantDTO? restaurantDTO = await _restaurantControllerApi.retrieveConfiguration(branchCode);

    print('Restaurant conf found: ' + restaurantDTO.toString());
    currentEmployeeList = [];
    currentEmployeeList = await _restaurantControllerApi.getEmployeeListByBranchCode(branchCode);
    print('Employee list for branch with code (' + branchCode + ') ->' +  currentEmployeeList.toString());
    notifyListeners();
  }

  turnIsVisibleValueToEmployee(EmployeeDTO employeeDTO) async {

    try{
      await _restaurantControllerApi.hideEmployee(employeeDTO.employeeId!);

      EmployeeDTO employee = currentEmployeeList!.where((element) => element.employeeId == employeeDTO.employeeId).first;
      employee.visible = !employee.visible!;
    }catch(e){
      print('Error: ' + e.toString());
    }
    notifyListeners();
  }
}