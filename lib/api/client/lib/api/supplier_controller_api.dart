//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SupplierControllerApi {
  SupplierControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/supplier/add' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [SupplierDTO] supplierDTO (required):
  Future<Response> addSupplierWithHttpInfo(String branchCode, SupplierDTO supplierDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/supplier/add';

    // ignore: prefer_final_locals
    Object? postBody = supplierDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'branchCode', branchCode));

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [SupplierDTO] supplierDTO (required):
  Future<SupplierDTO?> addSupplier(String branchCode, SupplierDTO supplierDTO,) async {
    final response = await addSupplierWithHttpInfo(branchCode, supplierDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SupplierDTO',) as SupplierDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/supplier/editsupplier' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SupplierDTO] supplierDTO (required):
  Future<Response> editSupplierWithHttpInfo(SupplierDTO supplierDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/supplier/editsupplier';

    // ignore: prefer_final_locals
    Object? postBody = supplierDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [SupplierDTO] supplierDTO (required):
  Future<SupplierDTO?> editSupplier(SupplierDTO supplierDTO,) async {
    final response = await editSupplierWithHttpInfo(supplierDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SupplierDTO',) as SupplierDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/supplier/product/add' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] supplierId (required):
  ///
  /// * [int] storageId (required):
  ///
  /// * [ProductDTO] productDTO (required):
  Future<Response> insertProductWithHttpInfo(int supplierId, int storageId, ProductDTO productDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/supplier/product/add';

    // ignore: prefer_final_locals
    Object? postBody = productDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'supplierId', supplierId));
      queryParams.addAll(_queryParams('', 'storageId', storageId));

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [int] supplierId (required):
  ///
  /// * [int] storageId (required):
  ///
  /// * [ProductDTO] productDTO (required):
  Future<ProductDTO?> insertProduct(int supplierId, int storageId, ProductDTO productDTO,) async {
    final response = await insertProductWithHttpInfo(supplierId, storageId, productDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProductDTO',) as ProductDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/supplier/product/insertlist' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] supplierId (required):
  ///
  /// * [List<ProductDTO>] productDTO (required):
  Future<Response> insertProductListWithHttpInfo(int supplierId, List<ProductDTO> productDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/supplier/product/insertlist';

    // ignore: prefer_final_locals
    Object? postBody = productDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'supplierId', supplierId));

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [int] supplierId (required):
  ///
  /// * [List<ProductDTO>] productDTO (required):
  Future<List<ProductDTO>?> insertProductList(int supplierId, List<ProductDTO> productDTO,) async {
    final response = await insertProductListWithHttpInfo(supplierId, productDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProductDTO>') as List)
        .cast<ProductDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'POST /api/supplier/addlist' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [List<SupplierDTO>] supplierDTO (required):
  Future<Response> insertSupplierListWithHttpInfo(String branchCode, List<SupplierDTO> supplierDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/supplier/addlist';

    // ignore: prefer_final_locals
    Object? postBody = supplierDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'branchCode', branchCode));

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [List<SupplierDTO>] supplierDTO (required):
  Future<List<SupplierDTO>?> insertSupplierList(String branchCode, List<SupplierDTO> supplierDTO,) async {
    final response = await insertSupplierListWithHttpInfo(branchCode, supplierDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SupplierDTO>') as List)
        .cast<SupplierDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'DELETE /api/supplier/delete' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] supplierId (required):
  Future<Response> removeSupplierWithHttpInfo(int supplierId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/supplier/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'supplierId', supplierId));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [int] supplierId (required):
  Future<bool?> removeSupplier(int supplierId,) async {
    final response = await removeSupplierWithHttpInfo(supplierId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'bool',) as bool;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/supplier/retrieveSuppliers' operation and returns the [Response].
  Future<Response> retrieveAllSupplierWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/supplier/retrieveSuppliers';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  Future<List<SupplierDTO>?> retrieveAllSupplier() async {
    final response = await retrieveAllSupplierWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SupplierDTO>') as List)
        .cast<SupplierDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/supplier/storenewbranchexclusionlisttotupplier' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] supplierId (required):
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> storeNewBranchExclusionListToSupplierWithHttpInfo(int supplierId, List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/supplier/storenewbranchexclusionlisttotupplier';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'supplierId', supplierId));

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [int] supplierId (required):
  ///
  /// * [List<String>] requestBody (required):
  Future<Object?> storeNewBranchExclusionListToSupplier(int supplierId, List<String> requestBody,) async {
    final response = await storeNewBranchExclusionListToSupplierWithHttpInfo(supplierId, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/supplier/storenewbranchListNotAllowedToSeeProduct' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] supplierId (required):
  ///
  /// * [int] productId (required):
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> storeNewBranchListNotAllowedToSeeProductWithHttpInfo(int supplierId, int productId, List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/supplier/storenewbranchListNotAllowedToSeeProduct';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'supplierId', supplierId));
      queryParams.addAll(_queryParams('', 'productId', productId));

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [int] supplierId (required):
  ///
  /// * [int] productId (required):
  ///
  /// * [List<String>] requestBody (required):
  Future<Object?> storeNewBranchListNotAllowedToSeeProduct(int supplierId, int productId, List<String> requestBody,) async {
    final response = await storeNewBranchListNotAllowedToSeeProductWithHttpInfo(supplierId, productId, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/supplier/product/update' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [ProductDTO] productDTO (required):
  Future<Response> updateProductWithHttpInfo(ProductDTO productDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/supplier/product/update';

    // ignore: prefer_final_locals
    Object? postBody = productDTO;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [ProductDTO] productDTO (required):
  Future<ProductDTO?> updateProduct(ProductDTO productDTO,) async {
    final response = await updateProductWithHttpInfo(productDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProductDTO',) as ProductDTO;
    
    }
    return null;
  }
}
