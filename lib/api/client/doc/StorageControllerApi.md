# ventimetri_api.api.StorageControllerApi

## Load the API package
```dart
import 'package:ventimetri_api/api.dart';
```

All URIs are relative to *http://localhost:59493/ventimetriservice*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addProduct**](StorageControllerApi.md#addproduct) | **POST** /api/storage/addproduct | 
[**addStorage**](StorageControllerApi.md#addstorage) | **POST** /api/storage/create | 
[**insertDataIntoInventario**](StorageControllerApi.md#insertdataintoinventario) | **PUT** /api/storage/insert/inventariodata | 
[**insertProductsFromSupplierList**](StorageControllerApi.md#insertproductsfromsupplierlist) | **POST** /api/storage/insertsupplierproducts | 
[**putData**](StorageControllerApi.md#putdata) | **PUT** /api/storage/putdata | 
[**removeProductFromStorage**](StorageControllerApi.md#removeproductfromstorage) | **DELETE** /api/storage/delete/product | 
[**retrieveStoragesByBranchCode**](StorageControllerApi.md#retrievestoragesbybranchcode) | **GET** /api/storage/retrieve/bybranchcode | 
[**updateStock**](StorageControllerApi.md#updatestock) | **PUT** /api/storage/update/stock/{storageId}/{userName}/{branchCode} | 


# **addProduct**
> InventarioDTO addProduct(productId, storageId, userName)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = StorageControllerApi();
final productId = 789; // int | 
final storageId = 789; // int | 
final userName = userName_example; // String | 

try {
    final result = api_instance.addProduct(productId, storageId, userName);
    print(result);
} catch (e) {
    print('Exception when calling StorageControllerApi->addProduct: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **int**|  | 
 **storageId** | **int**|  | 
 **userName** | **String**|  | 

### Return type

[**InventarioDTO**](InventarioDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addStorage**
> StorageDTO addStorage(branchCode, storageDTO)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = StorageControllerApi();
final branchCode = branchCode_example; // String | 
final storageDTO = StorageDTO(); // StorageDTO | 

try {
    final result = api_instance.addStorage(branchCode, storageDTO);
    print(result);
} catch (e) {
    print('Exception when calling StorageControllerApi->addStorage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 
 **storageDTO** | [**StorageDTO**](StorageDTO.md)|  | 

### Return type

[**StorageDTO**](StorageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **insertDataIntoInventario**
> StorageDTO insertDataIntoInventario(transactionInventoryRequest)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = StorageControllerApi();
final transactionInventoryRequest = TransactionInventoryRequest(); // TransactionInventoryRequest | 

try {
    final result = api_instance.insertDataIntoInventario(transactionInventoryRequest);
    print(result);
} catch (e) {
    print('Exception when calling StorageControllerApi->insertDataIntoInventario: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionInventoryRequest** | [**TransactionInventoryRequest**](TransactionInventoryRequest.md)|  | 

### Return type

[**StorageDTO**](StorageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **insertProductsFromSupplierList**
> List<InventarioDTO> insertProductsFromSupplierList(supplierId, storageId, userName)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = StorageControllerApi();
final supplierId = 789; // int | 
final storageId = 789; // int | 
final userName = userName_example; // String | 

try {
    final result = api_instance.insertProductsFromSupplierList(supplierId, storageId, userName);
    print(result);
} catch (e) {
    print('Exception when calling StorageControllerApi->insertProductsFromSupplierList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierId** | **int**|  | 
 **storageId** | **int**|  | 
 **userName** | **String**|  | 

### Return type

[**List<InventarioDTO>**](InventarioDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putData**
> InventarioDTO putData(inventarioId, insertedAmount, deletedAmount, userName)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = StorageControllerApi();
final inventarioId = 789; // int | 
final insertedAmount = 789; // int | 
final deletedAmount = 789; // int | 
final userName = userName_example; // String | 

try {
    final result = api_instance.putData(inventarioId, insertedAmount, deletedAmount, userName);
    print(result);
} catch (e) {
    print('Exception when calling StorageControllerApi->putData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventarioId** | **int**|  | 
 **insertedAmount** | **int**|  | 
 **deletedAmount** | **int**|  | 
 **userName** | **String**|  | 

### Return type

[**InventarioDTO**](InventarioDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeProductFromStorage**
> Object removeProductFromStorage(inventarioId)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = StorageControllerApi();
final inventarioId = 789; // int | 

try {
    final result = api_instance.removeProductFromStorage(inventarioId);
    print(result);
} catch (e) {
    print('Exception when calling StorageControllerApi->removeProductFromStorage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventarioId** | **int**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveStoragesByBranchCode**
> List<StorageDTO> retrieveStoragesByBranchCode(branchCode)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = StorageControllerApi();
final branchCode = branchCode_example; // String | 

try {
    final result = api_instance.retrieveStoragesByBranchCode(branchCode);
    print(result);
} catch (e) {
    print('Exception when calling StorageControllerApi->retrieveStoragesByBranchCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 

### Return type

[**List<StorageDTO>**](StorageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStock**
> StorageDTO updateStock(storageId, userName, branchCode, requestBody)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = StorageControllerApi();
final storageId = 789; // int | 
final userName = userName_example; // String | 
final branchCode = branchCode_example; // String | 
final requestBody = Map<String, double>(); // Map<String, double> | 

try {
    final result = api_instance.updateStock(storageId, userName, branchCode, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling StorageControllerApi->updateStock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageId** | **int**|  | 
 **userName** | **String**|  | 
 **branchCode** | **String**|  | 
 **requestBody** | [**Map<String, double>**](double.md)|  | 

### Return type

[**StorageDTO**](StorageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

