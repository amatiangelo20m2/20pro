# ventimetri_api.api.OrderControllerApi

## Load the API package
```dart
import 'package:ventimetri_api/api.dart';
```

All URIs are relative to *http://localhost:59493/ventimetriservice*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrder**](OrderControllerApi.md#createorder) | **POST** /api/order/create | 
[**deleteOrder**](OrderControllerApi.md#deleteorder) | **DELETE** /api/order/deleteorder | 
[**deleteOrderItemFromOrder**](OrderControllerApi.md#deleteorderitemfromorder) | **DELETE** /api/order/deleteorderitem | 
[**editOrder**](OrderControllerApi.md#editorder) | **PUT** /api/order/editorder/{orderId} | 
[**getOrderArchivedByBrancCode**](OrderControllerApi.md#getorderarchivedbybranccode) | **GET** /api/order/retrievearchivedorders | 
[**getOrderByBrancCode**](OrderControllerApi.md#getorderbybranccode) | **GET** /api/order/retrieve | 
[**retrieveExcelDataFromArchiviedOrders**](OrderControllerApi.md#retrieveexceldatafromarchiviedorders) | **GET** /api/order/retrieveexceldatafromarchiviedorders | 
[**retrieveSingleProductDetailsForRangeDateOrders**](OrderControllerApi.md#retrievesingleproductdetailsforrangedateorders) | **GET** /api/order/retrievesingleproddetailsforbranchordersandrangedate | 
[**updateOrder**](OrderControllerApi.md#updateorder) | **PUT** /api/order/updatetoprontoapartire | 
[**updateOrderStatus**](OrderControllerApi.md#updateorderstatus) | **PUT** /api/order/updatestatus | 
[**updateOrderToArchived**](OrderControllerApi.md#updateordertoarchived) | **PUT** /api/order/updatetoarchiviato | 
[**updateOrderToDelivered**](OrderControllerApi.md#updateordertodelivered) | **PUT** /api/order/updatetoconsegnato | 


# **createOrder**
> OrderDTO createOrder(createOrderEntity)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = OrderControllerApi();
final createOrderEntity = CreateOrderEntity(); // CreateOrderEntity | 

try {
    final result = api_instance.createOrder(createOrderEntity);
    print(result);
} catch (e) {
    print('Exception when calling OrderControllerApi->createOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createOrderEntity** | [**CreateOrderEntity**](CreateOrderEntity.md)|  | 

### Return type

[**OrderDTO**](OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrder**
> deleteOrder(orderId)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = OrderControllerApi();
final orderId = 789; // int | 

try {
    api_instance.deleteOrder(orderId);
} catch (e) {
    print('Exception when calling OrderControllerApi->deleteOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrderItemFromOrder**
> deleteOrderItemFromOrder(orderId, productIdList)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = OrderControllerApi();
final orderId = 789; // int | 
final productIdList = []; // List<int> | 

try {
    api_instance.deleteOrderItemFromOrder(orderId, productIdList);
} catch (e) {
    print('Exception when calling OrderControllerApi->deleteOrderItemFromOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **productIdList** | [**List<int>**](int.md)|  | [default to const []]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editOrder**
> OrderDTO editOrder(orderId, requestBody)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = OrderControllerApi();
final orderId = 789; // int | 
final requestBody = Map<String, double>(); // Map<String, double> | 

try {
    final result = api_instance.editOrder(orderId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling OrderControllerApi->editOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **requestBody** | [**Map<String, double>**](double.md)|  | 

### Return type

[**OrderDTO**](OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderArchivedByBrancCode**
> List<OrderDTO> getOrderArchivedByBrancCode(branchCode, startDate, endDate)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = OrderControllerApi();
final branchCode = branchCode_example; // String | 
final startDate = startDate_example; // String | 
final endDate = endDate_example; // String | 

try {
    final result = api_instance.getOrderArchivedByBrancCode(branchCode, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling OrderControllerApi->getOrderArchivedByBrancCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 
 **startDate** | **String**|  | 
 **endDate** | **String**|  | 

### Return type

[**List<OrderDTO>**](OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderByBrancCode**
> List<OrderDTO> getOrderByBrancCode(branchCode, startDate, endDate)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = OrderControllerApi();
final branchCode = branchCode_example; // String | 
final startDate = startDate_example; // String | 
final endDate = endDate_example; // String | 

try {
    final result = api_instance.getOrderByBrancCode(branchCode, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling OrderControllerApi->getOrderByBrancCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 
 **startDate** | **String**|  | 
 **endDate** | **String**|  | 

### Return type

[**List<OrderDTO>**](OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveExcelDataFromArchiviedOrders**
> OrderResultRecap retrieveExcelDataFromArchiviedOrders(branchCode, startDate, endDate)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = OrderControllerApi();
final branchCode = branchCode_example; // String | 
final startDate = startDate_example; // String | 
final endDate = endDate_example; // String | 

try {
    final result = api_instance.retrieveExcelDataFromArchiviedOrders(branchCode, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling OrderControllerApi->retrieveExcelDataFromArchiviedOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 
 **startDate** | **String**|  | 
 **endDate** | **String**|  | 

### Return type

[**OrderResultRecap**](OrderResultRecap.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveSingleProductDetailsForRangeDateOrders**
> Map<String, OrderItemDto> retrieveSingleProductDetailsForRangeDateOrders(productId, branchCode, startDate, endDate)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = OrderControllerApi();
final productId = 789; // int | 
final branchCode = branchCode_example; // String | 
final startDate = startDate_example; // String | 
final endDate = endDate_example; // String | 

try {
    final result = api_instance.retrieveSingleProductDetailsForRangeDateOrders(productId, branchCode, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling OrderControllerApi->retrieveSingleProductDetailsForRangeDateOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **int**|  | 
 **branchCode** | **String**|  | 
 **startDate** | **String**|  | 
 **endDate** | **String**|  | 

### Return type

[**Map<String, OrderItemDto>**](OrderItemDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrder**
> OrderDTO updateOrder(orderId, orderItemDto)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = OrderControllerApi();
final orderId = 789; // int | 
final orderItemDto = [List<OrderItemDto>()]; // List<OrderItemDto> | 

try {
    final result = api_instance.updateOrder(orderId, orderItemDto);
    print(result);
} catch (e) {
    print('Exception when calling OrderControllerApi->updateOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **orderItemDto** | [**List<OrderItemDto>**](OrderItemDto.md)|  | 

### Return type

[**OrderDTO**](OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrderStatus**
> OrderDTO updateOrderStatus(orderId, orderStatus)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = OrderControllerApi();
final orderId = 789; // int | 
final orderStatus = orderStatus_example; // String | 

try {
    final result = api_instance.updateOrderStatus(orderId, orderStatus);
    print(result);
} catch (e) {
    print('Exception when calling OrderControllerApi->updateOrderStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **orderStatus** | **String**|  | 

### Return type

[**OrderDTO**](OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrderToArchived**
> OrderDTO updateOrderToArchived(orderId, storageId, userName, orderItemDto)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = OrderControllerApi();
final orderId = 789; // int | 
final storageId = 789; // int | 
final userName = userName_example; // String | 
final orderItemDto = [List<OrderItemDto>()]; // List<OrderItemDto> | 

try {
    final result = api_instance.updateOrderToArchived(orderId, storageId, userName, orderItemDto);
    print(result);
} catch (e) {
    print('Exception when calling OrderControllerApi->updateOrderToArchived: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **storageId** | **int**|  | 
 **userName** | **String**|  | 
 **orderItemDto** | [**List<OrderItemDto>**](OrderItemDto.md)|  | 

### Return type

[**OrderDTO**](OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrderToDelivered**
> OrderDTO updateOrderToDelivered(orderId, storageId, orderItemDto)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = OrderControllerApi();
final orderId = 789; // int | 
final storageId = 789; // int | 
final orderItemDto = [List<OrderItemDto>()]; // List<OrderItemDto> | 

try {
    final result = api_instance.updateOrderToDelivered(orderId, storageId, orderItemDto);
    print(result);
} catch (e) {
    print('Exception when calling OrderControllerApi->updateOrderToDelivered: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **storageId** | **int**|  | 
 **orderItemDto** | [**List<OrderItemDto>**](OrderItemDto.md)|  | 

### Return type

[**OrderDTO**](OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

