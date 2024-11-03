# ventimetri_api.api.BranchControllerApi

## Load the API package
```dart
import 'package:ventimetri_api/api.dart';
```

All URIs are relative to *http://localhost:59493/ventimetriservice*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirmEmployee**](BranchControllerApi.md#confirmemployee) | **PUT** /api/confirmemployee | 
[**delete**](BranchControllerApi.md#delete) | **DELETE** /api/branch/delete | 
[**getBranchDataByBranchCode**](BranchControllerApi.md#getbranchdatabybranchcode) | **GET** /api/branchdatabybranchcode | 
[**getBranchDataByBranchCodeAndUserCode**](BranchControllerApi.md#getbranchdatabybranchcodeandusercode) | **GET** /api/branchdatabybranchcodeanduser | 
[**getBranchDataByBranchType**](BranchControllerApi.md#getbranchdatabybranchtype) | **GET** /api/branchdatabybranchtype | 
[**getEmployeeByBranchCode**](BranchControllerApi.md#getemployeebybranchcode) | **GET** /api/retrieveemployeebybranchcode | 
[**getEmployeeByUserCode**](BranchControllerApi.md#getemployeebyusercode) | **GET** /api/retrieveemployeebyusercode | 
[**linkUserToBranch**](BranchControllerApi.md#linkusertobranch) | **PUT** /api/linkusertobranch | 
[**removeUserFromBranch**](BranchControllerApi.md#removeuserfrombranch) | **PUT** /api/branch/removefromuserlist | 
[**retrieveAll**](BranchControllerApi.md#retrieveall) | **GET** /api/retrieveall | 
[**retrieveBranchByUserCodeAndBranchCode**](BranchControllerApi.md#retrievebranchbyusercodeandbranchcode) | **GET** /api/retrievebranchbyusercodeandbranchcode | 
[**retrieveBranchCounters**](BranchControllerApi.md#retrievebranchcounters) | **GET** /api/retrievebranchcounters/{branchCode} | 
[**retrieveData**](BranchControllerApi.md#retrievedata) | **GET** /api/retrievedata | 
[**save**](BranchControllerApi.md#save) | **POST** /api/branch/save | 
[**setFcmToken**](BranchControllerApi.md#setfcmtoken) | **POST** /api/setfmctoken | 
[**updateBranchData**](BranchControllerApi.md#updatebranchdata) | **PUT** /api/updatebranchdata | 
[**updateEmployeeRole**](BranchControllerApi.md#updateemployeerole) | **PUT** /api/update/employeerole | 


# **confirmEmployee**
> confirmEmployee(branchCode, userCode, adminUserCode)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();
final branchCode = branchCode_example; // String | 
final userCode = userCode_example; // String | 
final adminUserCode = adminUserCode_example; // String | 

try {
    api_instance.confirmEmployee(branchCode, userCode, adminUserCode);
} catch (e) {
    print('Exception when calling BranchControllerApi->confirmEmployee: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 
 **userCode** | **String**|  | 
 **adminUserCode** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> Object delete(branchCode)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();
final branchCode = branchCode_example; // String | 

try {
    final result = api_instance.delete(branchCode);
    print(result);
} catch (e) {
    print('Exception when calling BranchControllerApi->delete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBranchDataByBranchCode**
> BranchResponseEntity getBranchDataByBranchCode(branchCode)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();
final branchCode = branchCode_example; // String | 

try {
    final result = api_instance.getBranchDataByBranchCode(branchCode);
    print(result);
} catch (e) {
    print('Exception when calling BranchControllerApi->getBranchDataByBranchCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 

### Return type

[**BranchResponseEntity**](BranchResponseEntity.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBranchDataByBranchCodeAndUserCode**
> BranchResponseEntity getBranchDataByBranchCodeAndUserCode(userCode, branchCode)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();
final userCode = userCode_example; // String | 
final branchCode = branchCode_example; // String | 

try {
    final result = api_instance.getBranchDataByBranchCodeAndUserCode(userCode, branchCode);
    print(result);
} catch (e) {
    print('Exception when calling BranchControllerApi->getBranchDataByBranchCodeAndUserCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userCode** | **String**|  | 
 **branchCode** | **String**|  | 

### Return type

[**BranchResponseEntity**](BranchResponseEntity.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBranchDataByBranchType**
> List<BranchResponseEntity> getBranchDataByBranchType(branchType)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();
final branchType = branchType_example; // String | 

try {
    final result = api_instance.getBranchDataByBranchType(branchType);
    print(result);
} catch (e) {
    print('Exception when calling BranchControllerApi->getBranchDataByBranchType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchType** | **String**|  | 

### Return type

[**List<BranchResponseEntity>**](BranchResponseEntity.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmployeeByBranchCode**
> List<EmployeeEntity> getEmployeeByBranchCode(branchCode)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();
final branchCode = branchCode_example; // String | 

try {
    final result = api_instance.getEmployeeByBranchCode(branchCode);
    print(result);
} catch (e) {
    print('Exception when calling BranchControllerApi->getEmployeeByBranchCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 

### Return type

[**List<EmployeeEntity>**](EmployeeEntity.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmployeeByUserCode**
> List<EmployeeEntity> getEmployeeByUserCode(userCode)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();
final userCode = userCode_example; // String | 

try {
    final result = api_instance.getEmployeeByUserCode(userCode);
    print(result);
} catch (e) {
    print('Exception when calling BranchControllerApi->getEmployeeByUserCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userCode** | **String**|  | 

### Return type

[**List<EmployeeEntity>**](EmployeeEntity.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkUserToBranch**
> VentiMetriQuadriData linkUserToBranch(userName, userCode, branchCodes, role, fcmToken)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();
final userName = userName_example; // String | 
final userCode = userCode_example; // String | 
final branchCodes = []; // List<String> | 
final role = role_example; // String | 
final fcmToken = fcmToken_example; // String | 

try {
    final result = api_instance.linkUserToBranch(userName, userCode, branchCodes, role, fcmToken);
    print(result);
} catch (e) {
    print('Exception when calling BranchControllerApi->linkUserToBranch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userName** | **String**|  | 
 **userCode** | **String**|  | 
 **branchCodes** | [**List<String>**](String.md)|  | [default to const []]
 **role** | **String**|  | 
 **fcmToken** | **String**|  | 

### Return type

[**VentiMetriQuadriData**](VentiMetriQuadriData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserFromBranch**
> Object removeUserFromBranch(userCode, branchCode)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();
final userCode = userCode_example; // String | 
final branchCode = branchCode_example; // String | 

try {
    final result = api_instance.removeUserFromBranch(userCode, branchCode);
    print(result);
} catch (e) {
    print('Exception when calling BranchControllerApi->removeUserFromBranch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userCode** | **String**|  | 
 **branchCode** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveAll**
> VentiMetriQuadriData retrieveAll()



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();

try {
    final result = api_instance.retrieveAll();
    print(result);
} catch (e) {
    print('Exception when calling BranchControllerApi->retrieveAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VentiMetriQuadriData**](VentiMetriQuadriData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveBranchByUserCodeAndBranchCode**
> BranchResponseEntity retrieveBranchByUserCodeAndBranchCode(userCode, branchCode)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();
final userCode = userCode_example; // String | 
final branchCode = branchCode_example; // String | 

try {
    final result = api_instance.retrieveBranchByUserCodeAndBranchCode(userCode, branchCode);
    print(result);
} catch (e) {
    print('Exception when calling BranchControllerApi->retrieveBranchByUserCodeAndBranchCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userCode** | **String**|  | 
 **branchCode** | **String**|  | 

### Return type

[**BranchResponseEntity**](BranchResponseEntity.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveBranchCounters**
> CounterEntity retrieveBranchCounters(branchCode)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();
final branchCode = branchCode_example; // String | 

try {
    final result = api_instance.retrieveBranchCounters(branchCode);
    print(result);
} catch (e) {
    print('Exception when calling BranchControllerApi->retrieveBranchCounters: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 

### Return type

[**CounterEntity**](CounterEntity.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveData**
> VentiMetriQuadriData retrieveData(userCode, fcmToken)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();
final userCode = userCode_example; // String | 
final fcmToken = fcmToken_example; // String | 

try {
    final result = api_instance.retrieveData(userCode, fcmToken);
    print(result);
} catch (e) {
    print('Exception when calling BranchControllerApi->retrieveData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userCode** | **String**|  | 
 **fcmToken** | **String**|  | [optional] 

### Return type

[**VentiMetriQuadriData**](VentiMetriQuadriData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **save**
> BranchResponseEntity save(branchCreationEntity)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();
final branchCreationEntity = BranchCreationEntity(); // BranchCreationEntity | 

try {
    final result = api_instance.save(branchCreationEntity);
    print(result);
} catch (e) {
    print('Exception when calling BranchControllerApi->save: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCreationEntity** | [**BranchCreationEntity**](BranchCreationEntity.md)|  | 

### Return type

[**BranchResponseEntity**](BranchResponseEntity.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setFcmToken**
> setFcmToken(userCode, branchCode, fcmToken)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();
final userCode = userCode_example; // String | 
final branchCode = branchCode_example; // String | 
final fcmToken = fcmToken_example; // String | 

try {
    api_instance.setFcmToken(userCode, branchCode, fcmToken);
} catch (e) {
    print('Exception when calling BranchControllerApi->setFcmToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userCode** | **String**|  | 
 **branchCode** | **String**|  | 
 **fcmToken** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBranchData**
> Object updateBranchData(branchCreationEntity)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();
final branchCreationEntity = BranchCreationEntity(); // BranchCreationEntity | 

try {
    final result = api_instance.updateBranchData(branchCreationEntity);
    print(result);
} catch (e) {
    print('Exception when calling BranchControllerApi->updateBranchData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCreationEntity** | [**BranchCreationEntity**](BranchCreationEntity.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEmployeeRole**
> updateEmployeeRole(branchCode, userCode, role)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = BranchControllerApi();
final branchCode = branchCode_example; // String | 
final userCode = userCode_example; // String | 
final role = role_example; // String | 

try {
    api_instance.updateEmployeeRole(branchCode, userCode, role);
} catch (e) {
    print('Exception when calling BranchControllerApi->updateEmployeeRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 
 **userCode** | **String**|  | 
 **role** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

