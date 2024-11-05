# ventimetri_api_restaurant.api.FormControllerApi

## Load the API package
```dart
import 'package:ventimetri_api_restaurant/api.dart';
```

All URIs are relative to *http://192.168.1.4:22297/restaurantservice*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDefaultTimeRangeForAllDays**](FormControllerApi.md#adddefaulttimerangeforalldays) | **PUT** /api/form/create/defaulttimerange/{formCode} | 
[**addSpecialDayConf**](FormControllerApi.md#addspecialdayconf) | **PUT** /api/form/add/specialdayconf/{formCode} | 
[**addTimeRange**](FormControllerApi.md#addtimerange) | **PUT** /api/form/add/timerange/{formCode}/{dayOfWeek} | 
[**addTimeRangeSpecialDay**](FormControllerApi.md#addtimerangespecialday) | **PUT** /api/form/add/timerange/specialday/{formCode}/{specialDayConfCode} | 
[**createForm**](FormControllerApi.md#createform) | **POST** /api/form/create | 
[**deleteConfHoursRangeByCode**](FormControllerApi.md#deleteconfhoursrangebycode) | **DELETE** /api/form/delete/configurationrangehours/{formCode}/{timeRangeCode} | 
[**insertHolidays**](FormControllerApi.md#insertholidays) | **PUT** /api/form/add/holidays/{formCode} | 
[**resetDefaultConfigurationForm**](FormControllerApi.md#resetdefaultconfigurationform) | **DELETE** /api/form/resetconf/{formCode} | 
[**retrieveAll**](FormControllerApi.md#retrieveall) | **GET** /api/form/retrieveall | 
[**retrieveByBranchCode**](FormControllerApi.md#retrievebybranchcode) | **GET** /api/form/retrievebybranchcode/{branchCode} | 
[**retrieveByFormCode**](FormControllerApi.md#retrievebyformcode) | **GET** /api/form/retrievebyformcode/{formCode} | 
[**switchOpeningStatus**](FormControllerApi.md#switchopeningstatus) | **PUT** /api/form/switchOpeningStatus/{formCode}/{dayOfWeek} | 
[**updateForm**](FormControllerApi.md#updateform) | **PUT** /api/form/updateform | 
[**updateOpeningHourConfByCode**](FormControllerApi.md#updateopeninghourconfbycode) | **PUT** /api/form/update/openinghourconf/{formCode}/{timeRangeCode} | 
[**updateTimeRange**](FormControllerApi.md#updatetimerange) | **PUT** /api/form/update/timerange/{formCode} | 


# **addDefaultTimeRangeForAllDays**
> FormDTO addDefaultTimeRangeForAllDays(formCode, timeRange)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = FormControllerApi();
final formCode = formCode_example; // String | 
final timeRange = TimeRange(); // TimeRange | 

try {
    final result = api_instance.addDefaultTimeRangeForAllDays(formCode, timeRange);
    print(result);
} catch (e) {
    print('Exception when calling FormControllerApi->addDefaultTimeRangeForAllDays: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formCode** | **String**|  | 
 **timeRange** | [**TimeRange**](TimeRange.md)|  | 

### Return type

[**FormDTO**](FormDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addSpecialDayConf**
> FormDTO addSpecialDayConf(formCode, specialDay, isClosed, descriptionSpecialDay)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = FormControllerApi();
final formCode = formCode_example; // String | 
final specialDay = 2013-10-20; // DateTime | 
final isClosed = true; // bool | 
final descriptionSpecialDay = descriptionSpecialDay_example; // String | 

try {
    final result = api_instance.addSpecialDayConf(formCode, specialDay, isClosed, descriptionSpecialDay);
    print(result);
} catch (e) {
    print('Exception when calling FormControllerApi->addSpecialDayConf: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formCode** | **String**|  | 
 **specialDay** | **DateTime**|  | 
 **isClosed** | **bool**|  | 
 **descriptionSpecialDay** | **String**|  | 

### Return type

[**FormDTO**](FormDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addTimeRange**
> TimeRange addTimeRange(formCode, dayOfWeek, timeRange)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = FormControllerApi();
final formCode = formCode_example; // String | 
final dayOfWeek = dayOfWeek_example; // String | 
final timeRange = TimeRange(); // TimeRange | 

try {
    final result = api_instance.addTimeRange(formCode, dayOfWeek, timeRange);
    print(result);
} catch (e) {
    print('Exception when calling FormControllerApi->addTimeRange: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formCode** | **String**|  | 
 **dayOfWeek** | **String**|  | 
 **timeRange** | [**TimeRange**](TimeRange.md)|  | 

### Return type

[**TimeRange**](TimeRange.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addTimeRangeSpecialDay**
> FormDTO addTimeRangeSpecialDay(formCode, specialDayConfCode)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = FormControllerApi();
final formCode = formCode_example; // String | 
final specialDayConfCode = specialDayConfCode_example; // String | 

try {
    final result = api_instance.addTimeRangeSpecialDay(formCode, specialDayConfCode);
    print(result);
} catch (e) {
    print('Exception when calling FormControllerApi->addTimeRangeSpecialDay: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formCode** | **String**|  | 
 **specialDayConfCode** | **String**|  | 

### Return type

[**FormDTO**](FormDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createForm**
> FormDTO createForm(formDTO)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = FormControllerApi();
final formDTO = FormDTO(); // FormDTO | 

try {
    final result = api_instance.createForm(formDTO);
    print(result);
} catch (e) {
    print('Exception when calling FormControllerApi->createForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formDTO** | [**FormDTO**](FormDTO.md)|  | 

### Return type

[**FormDTO**](FormDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteConfHoursRangeByCode**
> deleteConfHoursRangeByCode(formCode, timeRangeCode)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = FormControllerApi();
final formCode = formCode_example; // String | 
final timeRangeCode = timeRangeCode_example; // String | 

try {
    api_instance.deleteConfHoursRangeByCode(formCode, timeRangeCode);
} catch (e) {
    print('Exception when calling FormControllerApi->deleteConfHoursRangeByCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formCode** | **String**|  | 
 **timeRangeCode** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **insertHolidays**
> FormDTO insertHolidays(formCode, dateFrom, dateTo, description)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = FormControllerApi();
final formCode = formCode_example; // String | 
final dateFrom = 2013-10-20T19:20:30+01:00; // DateTime | 
final dateTo = 2013-10-20T19:20:30+01:00; // DateTime | 
final description = description_example; // String | 

try {
    final result = api_instance.insertHolidays(formCode, dateFrom, dateTo, description);
    print(result);
} catch (e) {
    print('Exception when calling FormControllerApi->insertHolidays: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formCode** | **String**|  | 
 **dateFrom** | **DateTime**|  | 
 **dateTo** | **DateTime**|  | 
 **description** | **String**|  | 

### Return type

[**FormDTO**](FormDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetDefaultConfigurationForm**
> FormDTO resetDefaultConfigurationForm(formCode)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = FormControllerApi();
final formCode = formCode_example; // String | 

try {
    final result = api_instance.resetDefaultConfigurationForm(formCode);
    print(result);
} catch (e) {
    print('Exception when calling FormControllerApi->resetDefaultConfigurationForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formCode** | **String**|  | 

### Return type

[**FormDTO**](FormDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveAll**
> List<FormDTO> retrieveAll()



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = FormControllerApi();

try {
    final result = api_instance.retrieveAll();
    print(result);
} catch (e) {
    print('Exception when calling FormControllerApi->retrieveAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<FormDTO>**](FormDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveByBranchCode**
> List<FormDTO> retrieveByBranchCode(branchCode)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = FormControllerApi();
final branchCode = branchCode_example; // String | 

try {
    final result = api_instance.retrieveByBranchCode(branchCode);
    print(result);
} catch (e) {
    print('Exception when calling FormControllerApi->retrieveByBranchCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 

### Return type

[**List<FormDTO>**](FormDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveByFormCode**
> FormDTO retrieveByFormCode(formCode)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = FormControllerApi();
final formCode = formCode_example; // String | 

try {
    final result = api_instance.retrieveByFormCode(formCode);
    print(result);
} catch (e) {
    print('Exception when calling FormControllerApi->retrieveByFormCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formCode** | **String**|  | 

### Return type

[**FormDTO**](FormDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **switchOpeningStatus**
> switchOpeningStatus(formCode, dayOfWeek)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = FormControllerApi();
final formCode = formCode_example; // String | 
final dayOfWeek = dayOfWeek_example; // String | 

try {
    api_instance.switchOpeningStatus(formCode, dayOfWeek);
} catch (e) {
    print('Exception when calling FormControllerApi->switchOpeningStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formCode** | **String**|  | 
 **dayOfWeek** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateForm**
> FormDTO updateForm(formDTO)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = FormControllerApi();
final formDTO = FormDTO(); // FormDTO | 

try {
    final result = api_instance.updateForm(formDTO);
    print(result);
} catch (e) {
    print('Exception when calling FormControllerApi->updateForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formDTO** | [**FormDTO**](FormDTO.md)|  | 

### Return type

[**FormDTO**](FormDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOpeningHourConfByCode**
> updateOpeningHourConfByCode(formCode, timeRangeCode, timeRange)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = FormControllerApi();
final formCode = formCode_example; // String | 
final timeRangeCode = timeRangeCode_example; // String | 
final timeRange = ; // TimeRange | 

try {
    api_instance.updateOpeningHourConfByCode(formCode, timeRangeCode, timeRange);
} catch (e) {
    print('Exception when calling FormControllerApi->updateOpeningHourConfByCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formCode** | **String**|  | 
 **timeRangeCode** | **String**|  | 
 **timeRange** | [**TimeRange**](.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTimeRange**
> FormDTO updateTimeRange(formCode, timeRange)



### Example
```dart
import 'package:ventimetri_api_restaurant/api.dart';

final api_instance = FormControllerApi();
final formCode = formCode_example; // String | 
final timeRange = [List<TimeRange>()]; // List<TimeRange> | 

try {
    final result = api_instance.updateTimeRange(formCode, timeRange);
    print(result);
} catch (e) {
    print('Exception when calling FormControllerApi->updateTimeRange: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formCode** | **String**|  | 
 **timeRange** | [**List<TimeRange>**](TimeRange.md)|  | 

### Return type

[**FormDTO**](FormDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

