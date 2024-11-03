//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OrderControllerApi {
  OrderControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/order/create' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateOrderEntity] createOrderEntity (required):
  Future<Response> createOrderWithHttpInfo(CreateOrderEntity createOrderEntity,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/order/create';

    // ignore: prefer_final_locals
    Object? postBody = createOrderEntity;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [CreateOrderEntity] createOrderEntity (required):
  Future<OrderDTO?> createOrder(CreateOrderEntity createOrderEntity,) async {
    final response = await createOrderWithHttpInfo(createOrderEntity,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderDTO',) as OrderDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /api/order/deleteorder' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] orderId (required):
  Future<Response> deleteOrderWithHttpInfo(int orderId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/order/deleteorder';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'orderId', orderId));

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
  /// * [int] orderId (required):
  Future<void> deleteOrder(int orderId,) async {
    final response = await deleteOrderWithHttpInfo(orderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /api/order/deleteorderitem' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [List<int>] productIdList (required):
  Future<Response> deleteOrderItemFromOrderWithHttpInfo(int orderId, List<int> productIdList,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/order/deleteorderitem';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'orderId', orderId));
      queryParams.addAll(_queryParams('multi', 'productIdList', productIdList));

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
  /// * [int] orderId (required):
  ///
  /// * [List<int>] productIdList (required):
  Future<void> deleteOrderItemFromOrder(int orderId, List<int> productIdList,) async {
    final response = await deleteOrderItemFromOrderWithHttpInfo(orderId, productIdList,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /api/order/editorder/{orderId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [Map<String, double>] requestBody (required):
  Future<Response> editOrderWithHttpInfo(int orderId, Map<String, double> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/order/editorder/{orderId}'
      .replaceAll('{orderId}', orderId.toString());

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
  /// * [int] orderId (required):
  ///
  /// * [Map<String, double>] requestBody (required):
  Future<OrderDTO?> editOrder(int orderId, Map<String, double> requestBody,) async {
    final response = await editOrderWithHttpInfo(orderId, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderDTO',) as OrderDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/order/retrievearchivedorders' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [String] startDate (required):
  ///
  /// * [String] endDate (required):
  Future<Response> getOrderArchivedByBrancCodeWithHttpInfo(String branchCode, String startDate, String endDate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/order/retrievearchivedorders';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'branchCode', branchCode));
      queryParams.addAll(_queryParams('', 'startDate', startDate));
      queryParams.addAll(_queryParams('', 'endDate', endDate));

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
  ///
  /// * [String] startDate (required):
  ///
  /// * [String] endDate (required):
  Future<List<OrderDTO>?> getOrderArchivedByBrancCode(String branchCode, String startDate, String endDate,) async {
    final response = await getOrderArchivedByBrancCodeWithHttpInfo(branchCode, startDate, endDate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OrderDTO>') as List)
        .cast<OrderDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /api/order/retrieve' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [String] startDate (required):
  ///
  /// * [String] endDate (required):
  Future<Response> getOrderByBrancCodeWithHttpInfo(String branchCode, String startDate, String endDate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/order/retrieve';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'branchCode', branchCode));
      queryParams.addAll(_queryParams('', 'startDate', startDate));
      queryParams.addAll(_queryParams('', 'endDate', endDate));

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
  ///
  /// * [String] startDate (required):
  ///
  /// * [String] endDate (required):
  Future<List<OrderDTO>?> getOrderByBrancCode(String branchCode, String startDate, String endDate,) async {
    final response = await getOrderByBrancCodeWithHttpInfo(branchCode, startDate, endDate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OrderDTO>') as List)
        .cast<OrderDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /api/order/retrieveexceldatafromarchiviedorders' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [String] startDate (required):
  ///
  /// * [String] endDate (required):
  Future<Response> retrieveExcelDataFromArchiviedOrdersWithHttpInfo(String branchCode, String startDate, String endDate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/order/retrieveexceldatafromarchiviedorders';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'branchCode', branchCode));
      queryParams.addAll(_queryParams('', 'startDate', startDate));
      queryParams.addAll(_queryParams('', 'endDate', endDate));

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
  ///
  /// * [String] startDate (required):
  ///
  /// * [String] endDate (required):
  Future<OrderResultRecap?> retrieveExcelDataFromArchiviedOrders(String branchCode, String startDate, String endDate,) async {
    final response = await retrieveExcelDataFromArchiviedOrdersWithHttpInfo(branchCode, startDate, endDate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderResultRecap',) as OrderResultRecap;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/order/retrievesingleproddetailsforbranchordersandrangedate' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] productId (required):
  ///
  /// * [String] branchCode (required):
  ///
  /// * [String] startDate (required):
  ///
  /// * [String] endDate (required):
  Future<Response> retrieveSingleProductDetailsForRangeDateOrdersWithHttpInfo(int productId, String branchCode, String startDate, String endDate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/order/retrievesingleproddetailsforbranchordersandrangedate';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'productId', productId));
      queryParams.addAll(_queryParams('', 'branchCode', branchCode));
      queryParams.addAll(_queryParams('', 'startDate', startDate));
      queryParams.addAll(_queryParams('', 'endDate', endDate));

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
  /// * [int] productId (required):
  ///
  /// * [String] branchCode (required):
  ///
  /// * [String] startDate (required):
  ///
  /// * [String] endDate (required):
  Future<Map<String, OrderItemDto>?> retrieveSingleProductDetailsForRangeDateOrders(int productId, String branchCode, String startDate, String endDate,) async {
    final response = await retrieveSingleProductDetailsForRangeDateOrdersWithHttpInfo(productId, branchCode, startDate, endDate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, OrderItemDto>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, OrderItemDto>'),);

    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/order/updatetoprontoapartire' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [List<OrderItemDto>] orderItemDto (required):
  Future<Response> updateOrderWithHttpInfo(int orderId, List<OrderItemDto> orderItemDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/order/updatetoprontoapartire';

    // ignore: prefer_final_locals
    Object? postBody = orderItemDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'orderId', orderId));

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
  /// * [int] orderId (required):
  ///
  /// * [List<OrderItemDto>] orderItemDto (required):
  Future<OrderDTO?> updateOrder(int orderId, List<OrderItemDto> orderItemDto,) async {
    final response = await updateOrderWithHttpInfo(orderId, orderItemDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderDTO',) as OrderDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/order/updatestatus' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [String] orderStatus (required):
  Future<Response> updateOrderStatusWithHttpInfo(int orderId, String orderStatus,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/order/updatestatus';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'orderId', orderId));
      queryParams.addAll(_queryParams('', 'orderStatus', orderStatus));

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
  /// * [int] orderId (required):
  ///
  /// * [String] orderStatus (required):
  Future<OrderDTO?> updateOrderStatus(int orderId, String orderStatus,) async {
    final response = await updateOrderStatusWithHttpInfo(orderId, orderStatus,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderDTO',) as OrderDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/order/updatetoarchiviato' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] storageId (required):
  ///
  /// * [String] userName (required):
  ///
  /// * [List<OrderItemDto>] orderItemDto (required):
  Future<Response> updateOrderToArchivedWithHttpInfo(int orderId, int storageId, String userName, List<OrderItemDto> orderItemDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/order/updatetoarchiviato';

    // ignore: prefer_final_locals
    Object? postBody = orderItemDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'orderId', orderId));
      queryParams.addAll(_queryParams('', 'storageId', storageId));
      queryParams.addAll(_queryParams('', 'userName', userName));

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
  /// * [int] orderId (required):
  ///
  /// * [int] storageId (required):
  ///
  /// * [String] userName (required):
  ///
  /// * [List<OrderItemDto>] orderItemDto (required):
  Future<OrderDTO?> updateOrderToArchived(int orderId, int storageId, String userName, List<OrderItemDto> orderItemDto,) async {
    final response = await updateOrderToArchivedWithHttpInfo(orderId, storageId, userName, orderItemDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderDTO',) as OrderDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/order/updatetoconsegnato' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] orderId (required):
  ///
  /// * [int] storageId (required):
  ///
  /// * [List<OrderItemDto>] orderItemDto (required):
  Future<Response> updateOrderToDeliveredWithHttpInfo(int orderId, int storageId, List<OrderItemDto> orderItemDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/order/updatetoconsegnato';

    // ignore: prefer_final_locals
    Object? postBody = orderItemDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'orderId', orderId));
      queryParams.addAll(_queryParams('', 'storageId', storageId));

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
  /// * [int] orderId (required):
  ///
  /// * [int] storageId (required):
  ///
  /// * [List<OrderItemDto>] orderItemDto (required):
  Future<OrderDTO?> updateOrderToDelivered(int orderId, int storageId, List<OrderItemDto> orderItemDto,) async {
    final response = await updateOrderToDeliveredWithHttpInfo(orderId, storageId, orderItemDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderDTO',) as OrderDTO;
    
    }
    return null;
  }
}
