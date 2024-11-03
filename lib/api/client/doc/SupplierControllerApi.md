# ventimetri_api.api.SupplierControllerApi

## Load the API package
```dart
import 'package:ventimetri_api/api.dart';
```

All URIs are relative to *http://localhost:59493/ventimetriservice*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addSupplier**](SupplierControllerApi.md#addsupplier) | **POST** /api/supplier/add | 
[**editSupplier**](SupplierControllerApi.md#editsupplier) | **PUT** /api/supplier/editsupplier | 
[**insertProduct**](SupplierControllerApi.md#insertproduct) | **POST** /api/supplier/product/add | 
[**insertProductList**](SupplierControllerApi.md#insertproductlist) | **POST** /api/supplier/product/insertlist | 
[**insertSupplierList**](SupplierControllerApi.md#insertsupplierlist) | **POST** /api/supplier/addlist | 
[**removeSupplier**](SupplierControllerApi.md#removesupplier) | **DELETE** /api/supplier/delete | 
[**retrieveAllSupplier**](SupplierControllerApi.md#retrieveallsupplier) | **GET** /api/supplier/retrieveSuppliers | 
[**storeNewBranchExclusionListToSupplier**](SupplierControllerApi.md#storenewbranchexclusionlisttosupplier) | **PUT** /api/supplier/storenewbranchexclusionlisttotupplier | 
[**storeNewBranchListNotAllowedToSeeProduct**](SupplierControllerApi.md#storenewbranchlistnotallowedtoseeproduct) | **PUT** /api/supplier/storenewbranchListNotAllowedToSeeProduct | 
[**updateProduct**](SupplierControllerApi.md#updateproduct) | **PUT** /api/supplier/product/update | 


# **addSupplier**
> SupplierDTO addSupplier(branchCode, supplierDTO)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = SupplierControllerApi();
final branchCode = branchCode_example; // String | 
final supplierDTO = SupplierDTO(); // SupplierDTO | 

try {
    final result = api_instance.addSupplier(branchCode, supplierDTO);
    print(result);
} catch (e) {
    print('Exception when calling SupplierControllerApi->addSupplier: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 
 **supplierDTO** | [**SupplierDTO**](SupplierDTO.md)|  | 

### Return type

[**SupplierDTO**](SupplierDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editSupplier**
> SupplierDTO editSupplier(supplierDTO)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = SupplierControllerApi();
final supplierDTO = SupplierDTO(); // SupplierDTO | 

try {
    final result = api_instance.editSupplier(supplierDTO);
    print(result);
} catch (e) {
    print('Exception when calling SupplierControllerApi->editSupplier: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierDTO** | [**SupplierDTO**](SupplierDTO.md)|  | 

### Return type

[**SupplierDTO**](SupplierDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **insertProduct**
> ProductDTO insertProduct(supplierId, storageId, productDTO)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = SupplierControllerApi();
final supplierId = 789; // int | 
final storageId = 789; // int | 
final productDTO = ProductDTO(); // ProductDTO | 

try {
    final result = api_instance.insertProduct(supplierId, storageId, productDTO);
    print(result);
} catch (e) {
    print('Exception when calling SupplierControllerApi->insertProduct: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierId** | **int**|  | 
 **storageId** | **int**|  | 
 **productDTO** | [**ProductDTO**](ProductDTO.md)|  | 

### Return type

[**ProductDTO**](ProductDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **insertProductList**
> List<ProductDTO> insertProductList(supplierId, productDTO)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = SupplierControllerApi();
final supplierId = 789; // int | 
final productDTO = [List<ProductDTO>()]; // List<ProductDTO> | 

try {
    final result = api_instance.insertProductList(supplierId, productDTO);
    print(result);
} catch (e) {
    print('Exception when calling SupplierControllerApi->insertProductList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierId** | **int**|  | 
 **productDTO** | [**List<ProductDTO>**](ProductDTO.md)|  | 

### Return type

[**List<ProductDTO>**](ProductDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **insertSupplierList**
> List<SupplierDTO> insertSupplierList(branchCode, supplierDTO)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = SupplierControllerApi();
final branchCode = branchCode_example; // String | 
final supplierDTO = [List<SupplierDTO>()]; // List<SupplierDTO> | 

try {
    final result = api_instance.insertSupplierList(branchCode, supplierDTO);
    print(result);
} catch (e) {
    print('Exception when calling SupplierControllerApi->insertSupplierList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchCode** | **String**|  | 
 **supplierDTO** | [**List<SupplierDTO>**](SupplierDTO.md)|  | 

### Return type

[**List<SupplierDTO>**](SupplierDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeSupplier**
> bool removeSupplier(supplierId)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = SupplierControllerApi();
final supplierId = 789; // int | 

try {
    final result = api_instance.removeSupplier(supplierId);
    print(result);
} catch (e) {
    print('Exception when calling SupplierControllerApi->removeSupplier: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierId** | **int**|  | 

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveAllSupplier**
> List<SupplierDTO> retrieveAllSupplier()



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = SupplierControllerApi();

try {
    final result = api_instance.retrieveAllSupplier();
    print(result);
} catch (e) {
    print('Exception when calling SupplierControllerApi->retrieveAllSupplier: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SupplierDTO>**](SupplierDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storeNewBranchExclusionListToSupplier**
> Object storeNewBranchExclusionListToSupplier(supplierId, requestBody)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = SupplierControllerApi();
final supplierId = 789; // int | 
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.storeNewBranchExclusionListToSupplier(supplierId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling SupplierControllerApi->storeNewBranchExclusionListToSupplier: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierId** | **int**|  | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storeNewBranchListNotAllowedToSeeProduct**
> Object storeNewBranchListNotAllowedToSeeProduct(supplierId, productId, requestBody)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = SupplierControllerApi();
final supplierId = 789; // int | 
final productId = 789; // int | 
final requestBody = [List<String>()]; // List<String> | 

try {
    final result = api_instance.storeNewBranchListNotAllowedToSeeProduct(supplierId, productId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling SupplierControllerApi->storeNewBranchListNotAllowedToSeeProduct: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierId** | **int**|  | 
 **productId** | **int**|  | 
 **requestBody** | [**List<String>**](String.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProduct**
> ProductDTO updateProduct(productDTO)



### Example
```dart
import 'package:ventimetri_api/api.dart';

final api_instance = SupplierControllerApi();
final productDTO = ProductDTO(); // ProductDTO | 

try {
    final result = api_instance.updateProduct(productDTO);
    print(result);
} catch (e) {
    print('Exception when calling SupplierControllerApi->updateProduct: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productDTO** | [**ProductDTO**](ProductDTO.md)|  | 

### Return type

[**ProductDTO**](ProductDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

