//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BookingControllerApi {
  BookingControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/booking/create' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [BookingDTO] bookingDTO (required):
  Future<Response> createWithHttpInfo(BookingDTO bookingDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/booking/create';

    // ignore: prefer_final_locals
    Object? postBody = bookingDTO;

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
  /// * [BookingDTO] bookingDTO (required):
  Future<BookingDTO?> create(BookingDTO bookingDTO,) async {
    final response = await createWithHttpInfo(bookingDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BookingDTO',) as BookingDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /api/booking/delete/{bookingCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] bookingCode (required):
  Future<Response> deleteBookingWithHttpInfo(String bookingCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/booking/delete/{bookingCode}'
      .replaceAll('{bookingCode}', bookingCode);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [String] bookingCode (required):
  Future<void> deleteBooking(String bookingCode,) async {
    final response = await deleteBookingWithHttpInfo(bookingCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/booking/retrievebycustomeremail/{email}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] email (required):
  Future<Response> findBookingByCustomerEmailWithHttpInfo(String email,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/booking/retrievebycustomeremail/{email}'
      .replaceAll('{email}', email);

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

  /// Parameters:
  ///
  /// * [String] email (required):
  Future<List<BookingDTO>?> findBookingByCustomerEmail(String email,) async {
    final response = await findBookingByCustomerEmailWithHttpInfo(email,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BookingDTO>') as List)
        .cast<BookingDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /api/booking/retrievebyphone/{prefix}/{phone}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] prefix (required):
  ///
  /// * [String] phone (required):
  Future<Response> findBookingByCustomerPrefixAndPhoneWithHttpInfo(String prefix, String phone,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/booking/retrievebyphone/{prefix}/{phone}'
      .replaceAll('{prefix}', prefix)
      .replaceAll('{phone}', phone);

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

  /// Parameters:
  ///
  /// * [String] prefix (required):
  ///
  /// * [String] phone (required):
  Future<List<BookingDTO>?> findBookingByCustomerPrefixAndPhone(String prefix, String phone,) async {
    final response = await findBookingByCustomerPrefixAndPhoneWithHttpInfo(prefix, phone,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BookingDTO>') as List)
        .cast<BookingDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /api/booking/retrievebyformcode/{formCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] formCode (required):
  Future<Response> findBookingByFormCodeWithHttpInfo(String formCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/booking/retrievebyformcode/{formCode}'
      .replaceAll('{formCode}', formCode);

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

  /// Parameters:
  ///
  /// * [String] formCode (required):
  Future<List<BookingDTO>?> findBookingByFormCode(String formCode,) async {
    final response = await findBookingByFormCodeWithHttpInfo(formCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BookingDTO>') as List)
        .cast<BookingDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /api/booking/retrievebynranchcode/{branchCode}/{date}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [String] date (required):
  Future<Response> retrieveBookingByBranchCodeAndDateWithHttpInfo(String branchCode, String date,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/booking/retrievebynranchcode/{branchCode}/{date}'
      .replaceAll('{branchCode}', branchCode)
      .replaceAll('{date}', date);

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

  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [String] date (required):
  Future<List<BookingDTO>?> retrieveBookingByBranchCodeAndDate(String branchCode, String date,) async {
    final response = await retrieveBookingByBranchCodeAndDateWithHttpInfo(branchCode, date,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BookingDTO>') as List)
        .cast<BookingDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /api/booking/retrievebynranchcode/{branchCode}/{fromDate}/{toDate}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [String] fromDate (required):
  ///
  /// * [String] toDate (required):
  Future<Response> retrieveBookingByStatusAndBranchCodeWithHttpInfo(String branchCode, String fromDate, String toDate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/booking/retrievebynranchcode/{branchCode}/{fromDate}/{toDate}'
      .replaceAll('{branchCode}', branchCode)
      .replaceAll('{fromDate}', fromDate)
      .replaceAll('{toDate}', toDate);

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

  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [String] fromDate (required):
  ///
  /// * [String] toDate (required):
  Future<List<BookingDTO>?> retrieveBookingByStatusAndBranchCode(String branchCode, String fromDate, String toDate,) async {
    final response = await retrieveBookingByStatusAndBranchCodeWithHttpInfo(branchCode, fromDate, toDate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BookingDTO>') as List)
        .cast<BookingDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /api/booking/retrievehistoricalcustomers/bybookingson/{branchCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  Future<Response> retrieveHistoricalCustomersBasedOnReservationsByBranchCodeWithHttpInfo(String branchCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/booking/retrievehistoricalcustomers/bybookingson/{branchCode}'
      .replaceAll('{branchCode}', branchCode);

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

  /// Parameters:
  ///
  /// * [String] branchCode (required):
  Future<List<CustomerDTO>?> retrieveHistoricalCustomersBasedOnReservationsByBranchCode(String branchCode,) async {
    final response = await retrieveHistoricalCustomersBasedOnReservationsByBranchCodeWithHttpInfo(branchCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CustomerDTO>') as List)
        .cast<CustomerDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/booking/updatebooking' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [BookingDTO] bookingDTO (required):
  Future<Response> updateBookingWithHttpInfo(BookingDTO bookingDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/booking/updatebooking';

    // ignore: prefer_final_locals
    Object? postBody = bookingDTO;

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
  /// * [BookingDTO] bookingDTO (required):
  Future<BookingDTO?> updateBooking(BookingDTO bookingDTO,) async {
    final response = await updateBookingWithHttpInfo(bookingDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BookingDTO',) as BookingDTO;
    
    }
    return null;
  }
}
