# ventimetri_api_restaurant.api.RestaurantControllerApi

## Load the API package
```dart
import 'package:ventimetri_api_restaurant/api.dart';
```

All URIs are relative to *http://192.168.1.4:13643/restaurantservice*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmployee**](RestaurantControllerApi.md#createemployee) | **POST** /api/restaurant/employee/create/{branchCode} | 
[**createReports**](RestaurantControllerApi.md#createreports) | **POST** /api/restaurant/create/reports | 
[**deleteEmployee**](RestaurantControllerApi.md#deleteemployee) | **DELETE** /api/restaurant/deleteemployee/{employeeId} | 
[**deleteReport**](RestaurantControllerApi.md#deletereport) | **DELETE** /api/restaurant/report/{id} | 
[**findFiredEmployeeByBranchCode**](RestaurantControllerApi.md#findfiredemployeebybranchcode) | **GET** /api/restaurant/getfiredemployeebybranchcode/{branchCode} | 
[**fireEmployee**](RestaurantControllerApi.md#fireemployee) | **PUT** /api/restaurant/fireemployee/{employeeId} | 
[**getAllEmployees**](RestaurantControllerApi.md#getallemployees) | **GET** /api/restaurant/employee/getall | 
[**getEmployeeById**](RestaurantControllerApi.md#getemployeebyid) | **GET** /api/restaurant/getemployee/{id} | 
[**getEmployeeListByBranchCode**](RestaurantControllerApi.md#getemployeelistbybranchcode) | **GET** /api/restaurant/getemployeebybranchcode/{branchCode} | 
[**getReportById**](RestaurantControllerApi.md#getreportbyid) | **GET** /api/restaurant/getreport/{id} | 
[**getReportsByBranchCodeAndDate**](RestaurantControllerApi.md#getreportsbybranchcodeanddate) | **GET** /api/restaurant/retrievereport/{branchCode} | 
[**hideEmployee**](RestaurantControllerApi.md#hideemployee) | **PUT** /api/restaurant/hideemployee/{employeeId} | 
[**loginFromMobileDevice**](RestaurantControllerApi.md#loginfrommobiledevice) | **POST** /api/restaurant/employee/mobiledevice/login/{branchCode} | 
[**retrieveConfiguration**](RestaurantControllerApi.md#retrieveconfiguration) | **POST** /api/restaurant/restaurant/retrieveconfiguration/{branchCode} | 
[**retrieveReports**](RestaurantControllerApi.md#retrievereports) | **GET** /api/restaurant/retrievereports/{branchCode} | 
[**updateEmployee**](RestaurantControllerApi.md#updateemployee) | **PUT** /api/restaurant/employee/update/{branchCode} | 


# **createEmployee**
> EmployeeDTO createEmployee(branchCode, employeeDTO)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = RestaurantControllerApi();
final branchCode = branchCode_example; // String | 
final employeeDTO = EmployeeDTO(); // EmployeeDTO | 

try {
    final result = api_instance.createEmployee(branchCode, employeeDTO);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantControllerApi->createEmployee: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 
 **employeeDTO** | [**EmployeeDTO**](EmployeeDTO.md)|  | 

### Return type

[**EmployeeDTO**](EmployeeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createReports**
> List<EmployeePresenceReportDTO> createReports(employeePresenceReportDTO)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = RestaurantControllerApi();
final employeePresenceReportDTO = [List<EmployeePresenceReportDTO>()]; // List<EmployeePresenceReportDTO> | 

try {
    final result = api_instance.createReports(employeePresenceReportDTO);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantControllerApi->createReports: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeePresenceReportDTO** | [**List<EmployeePresenceReportDTO>**](EmployeePresenceReportDTO.md)|  | 

### Return type

[**List<EmployeePresenceReportDTO>**](EmployeePresenceReportDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEmployee**
> deleteEmployee(employeeId)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = RestaurantControllerApi();
final employeeId = 789; // int | 

try {
    api_instance.deleteEmployee(employeeId);
} catch (e) {
    print('Exception when calling RestaurantControllerApi->deleteEmployee: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteReport**
> deleteReport(id)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = RestaurantControllerApi();
final id = 789; // int | 

try {
    api_instance.deleteReport(id);
} catch (e) {
    print('Exception when calling RestaurantControllerApi->deleteReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findFiredEmployeeByBranchCode**
> List<EmployeeDTO> findFiredEmployeeByBranchCode(branchCode)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = RestaurantControllerApi();
final branchCode = branchCode_example; // String | 

try {
    final result = api_instance.findFiredEmployeeByBranchCode(branchCode);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantControllerApi->findFiredEmployeeByBranchCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 

### Return type

[**List<EmployeeDTO>**](EmployeeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fireEmployee**
> fireEmployee(employeeId)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = RestaurantControllerApi();
final employeeId = 789; // int | 

try {
    api_instance.fireEmployee(employeeId);
} catch (e) {
    print('Exception when calling RestaurantControllerApi->fireEmployee: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllEmployees**
> List<EmployeeDTO> getAllEmployees()



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = RestaurantControllerApi();

try {
    final result = api_instance.getAllEmployees();
    print(result);
} catch (e) {
    print('Exception when calling RestaurantControllerApi->getAllEmployees: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<EmployeeDTO>**](EmployeeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmployeeById**
> EmployeeDTO getEmployeeById(id)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = RestaurantControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.getEmployeeById(id);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantControllerApi->getEmployeeById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**EmployeeDTO**](EmployeeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmployeeListByBranchCode**
> List<EmployeeDTO> getEmployeeListByBranchCode(branchCode)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = RestaurantControllerApi();
final branchCode = branchCode_example; // String | 

try {
    final result = api_instance.getEmployeeListByBranchCode(branchCode);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantControllerApi->getEmployeeListByBranchCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 

### Return type

[**List<EmployeeDTO>**](EmployeeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportById**
> EmployeePresenceReportDTO getReportById(id)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = RestaurantControllerApi();
final id = 789; // int | 

try {
    final result = api_instance.getReportById(id);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantControllerApi->getReportById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**EmployeePresenceReportDTO**](EmployeePresenceReportDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportsByBranchCodeAndDate**
> List<EmployeePresenceReportDTO> getReportsByBranchCodeAndDate(branchCode, zonedDateTime)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = RestaurantControllerApi();
final branchCode = branchCode_example; // String | 
final zonedDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.getReportsByBranchCodeAndDate(branchCode, zonedDateTime);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantControllerApi->getReportsByBranchCodeAndDate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 
 **zonedDateTime** | **DateTime**|  | 

### Return type

[**List<EmployeePresenceReportDTO>**](EmployeePresenceReportDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hideEmployee**
> hideEmployee(employeeId)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = RestaurantControllerApi();
final employeeId = 789; // int | 

try {
    api_instance.hideEmployee(employeeId);
} catch (e) {
    print('Exception when calling RestaurantControllerApi->hideEmployee: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginFromMobileDevice**
> EmployeeDTO loginFromMobileDevice(branchCode, username, password, mobileDeviceDetails)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = RestaurantControllerApi();
final branchCode = branchCode_example; // String | 
final username = username_example; // String | 
final password = password_example; // String | 
final mobileDeviceDetails = MobileDeviceDetails(); // MobileDeviceDetails | 

try {
    final result = api_instance.loginFromMobileDevice(branchCode, username, password, mobileDeviceDetails);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantControllerApi->loginFromMobileDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 
 **username** | **String**|  | 
 **password** | **String**|  | 
 **mobileDeviceDetails** | [**MobileDeviceDetails**](MobileDeviceDetails.md)|  | 

### Return type

[**EmployeeDTO**](EmployeeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveConfiguration**
> RestaurantDTO retrieveConfiguration(branchCode)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = RestaurantControllerApi();
final branchCode = branchCode_example; // String | 

try {
    final result = api_instance.retrieveConfiguration(branchCode);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantControllerApi->retrieveConfiguration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 

### Return type

[**RestaurantDTO**](RestaurantDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveReports**
> List<EmployeeReportSummaryDTO> retrieveReports(branchCode, initialRangeDate, endRangeDate)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = RestaurantControllerApi();
final branchCode = branchCode_example; // String | 
final initialRangeDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endRangeDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.retrieveReports(branchCode, initialRangeDate, endRangeDate);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantControllerApi->retrieveReports: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 
 **initialRangeDate** | **DateTime**|  | 
 **endRangeDate** | **DateTime**|  | 

### Return type

[**List<EmployeeReportSummaryDTO>**](EmployeeReportSummaryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEmployee**
> EmployeeDTO updateEmployee(branchCode, employeeDTO)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = RestaurantControllerApi();
final branchCode = branchCode_example; // String | 
final employeeDTO = EmployeeDTO(); // EmployeeDTO | 

try {
    final result = api_instance.updateEmployee(branchCode, employeeDTO);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantControllerApi->updateEmployee: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 
 **employeeDTO** | [**EmployeeDTO**](EmployeeDTO.md)|  | 

### Return type

[**EmployeeDTO**](EmployeeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

