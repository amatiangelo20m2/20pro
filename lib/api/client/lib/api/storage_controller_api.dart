//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StorageControllerApi {
  StorageControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/storage/addproduct' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] productId (required):
  ///
  /// * [int] storageId (required):
  ///
  /// * [String] userName (required):
  Future<Response> addProductWithHttpInfo(int productId, int storageId, String userName,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/storage/addproduct';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'productId', productId));
      queryParams.addAll(_queryParams('', 'storageId', storageId));
      queryParams.addAll(_queryParams('', 'userName', userName));

    const contentTypes = <String>[];


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
  /// * [int] productId (required):
  ///
  /// * [int] storageId (required):
  ///
  /// * [String] userName (required):
  Future<InventarioDTO?> addProduct(int productId, int storageId, String userName,) async {
    final response = await addProductWithHttpInfo(productId, storageId, userName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InventarioDTO',) as InventarioDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/storage/create' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [StorageDTO] storageDTO (required):
  Future<Response> addStorageWithHttpInfo(String branchCode, StorageDTO storageDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/storage/create';

    // ignore: prefer_final_locals
    Object? postBody = storageDTO;

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
  /// * [StorageDTO] storageDTO (required):
  Future<StorageDTO?> addStorage(String branchCode, StorageDTO storageDTO,) async {
    final response = await addStorageWithHttpInfo(branchCode, storageDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StorageDTO',) as StorageDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/storage/insert/inventariodata' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [TransactionInventoryRequest] transactionInventoryRequest (required):
  Future<Response> insertDataIntoInventarioWithHttpInfo(TransactionInventoryRequest transactionInventoryRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/storage/insert/inventariodata';

    // ignore: prefer_final_locals
    Object? postBody = transactionInventoryRequest;

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
  /// * [TransactionInventoryRequest] transactionInventoryRequest (required):
  Future<StorageDTO?> insertDataIntoInventario(TransactionInventoryRequest transactionInventoryRequest,) async {
    final response = await insertDataIntoInventarioWithHttpInfo(transactionInventoryRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StorageDTO',) as StorageDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/storage/insertsupplierproducts' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] supplierId (required):
  ///
  /// * [int] storageId (required):
  ///
  /// * [String] userName (required):
  Future<Response> insertProductsFromSupplierListWithHttpInfo(int supplierId, int storageId, String userName,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/storage/insertsupplierproducts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'supplierId', supplierId));
      queryParams.addAll(_queryParams('', 'storageId', storageId));
      queryParams.addAll(_queryParams('', 'userName', userName));

    const contentTypes = <String>[];


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
  /// * [String] userName (required):
  Future<List<InventarioDTO>?> insertProductsFromSupplierList(int supplierId, int storageId, String userName,) async {
    final response = await insertProductsFromSupplierListWithHttpInfo(supplierId, storageId, userName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InventarioDTO>') as List)
        .cast<InventarioDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/storage/putdata' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] inventarioId (required):
  ///
  /// * [int] insertedAmount (required):
  ///
  /// * [int] deletedAmount (required):
  ///
  /// * [String] userName (required):
  Future<Response> putDataWithHttpInfo(int inventarioId, int insertedAmount, int deletedAmount, String userName,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/storage/putdata';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'inventarioId', inventarioId));
      queryParams.addAll(_queryParams('', 'insertedAmount', insertedAmount));
      queryParams.addAll(_queryParams('', 'deletedAmount', deletedAmount));
      queryParams.addAll(_queryParams('', 'userName', userName));

    const contentTypes = <String>[];


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
  /// * [int] inventarioId (required):
  ///
  /// * [int] insertedAmount (required):
  ///
  /// * [int] deletedAmount (required):
  ///
  /// * [String] userName (required):
  Future<InventarioDTO?> putData(int inventarioId, int insertedAmount, int deletedAmount, String userName,) async {
    final response = await putDataWithHttpInfo(inventarioId, insertedAmount, deletedAmount, userName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InventarioDTO',) as InventarioDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /api/storage/delete/product' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] inventarioId (required):
  Future<Response> removeProductFromStorageWithHttpInfo(int inventarioId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/storage/delete/product';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'inventarioId', inventarioId));

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
  /// * [int] inventarioId (required):
  Future<Object?> removeProductFromStorage(int inventarioId,) async {
    final response = await removeProductFromStorageWithHttpInfo(inventarioId,);
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

  /// Performs an HTTP 'GET /api/storage/retrieve/bybranchcode' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  Future<Response> retrieveStoragesByBranchCodeWithHttpInfo(String branchCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/storage/retrieve/bybranchcode';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'branchCode', branchCode));

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

  /// Parameters:
  ///
  /// * [String] branchCode (required):
  Future<List<StorageDTO>?> retrieveStoragesByBranchCode(String branchCode,) async {
    final response = await retrieveStoragesByBranchCodeWithHttpInfo(branchCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<StorageDTO>') as List)
        .cast<StorageDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/storage/update/stock/{storageId}/{userName}/{branchCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] storageId (required):
  ///
  /// * [String] userName (required):
  ///
  /// * [String] branchCode (required):
  ///
  /// * [Map<String, double>] requestBody (required):
  Future<Response> updateStockWithHttpInfo(int storageId, String userName, String branchCode, Map<String, double> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/storage/update/stock/{storageId}/{userName}/{branchCode}'
      .replaceAll('{storageId}', storageId.toString())
      .replaceAll('{userName}', userName)
      .replaceAll('{branchCode}', branchCode);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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
  /// * [int] storageId (required):
  ///
  /// * [String] userName (required):
  ///
  /// * [String] branchCode (required):
  ///
  /// * [Map<String, double>] requestBody (required):
  Future<StorageDTO?> updateStock(int storageId, String userName, String branchCode, Map<String, double> requestBody,) async {
    final response = await updateStockWithHttpInfo(storageId, userName, branchCode, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StorageDTO',) as StorageDTO;
    
    }
    return null;
  }
}
