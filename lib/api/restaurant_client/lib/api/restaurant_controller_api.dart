//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RestaurantControllerApi {
  RestaurantControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/restaurant/employee/create/{branchCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [EmployeeDTO] employeeDTO (required):
  Future<Response> createEmployeeWithHttpInfo(String branchCode, EmployeeDTO employeeDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/restaurant/employee/create/{branchCode}'
      .replaceAll('{branchCode}', branchCode);

    // ignore: prefer_final_locals
    Object? postBody = employeeDTO;

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
  /// * [String] branchCode (required):
  ///
  /// * [EmployeeDTO] employeeDTO (required):
  Future<EmployeeDTO?> createEmployee(String branchCode, EmployeeDTO employeeDTO,) async {
    final response = await createEmployeeWithHttpInfo(branchCode, employeeDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmployeeDTO',) as EmployeeDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/restaurant/create/reports' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [List<EmployeePresenceReportDTO>] employeePresenceReportDTO (required):
  Future<Response> createReportsWithHttpInfo(List<EmployeePresenceReportDTO> employeePresenceReportDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/restaurant/create/reports';

    // ignore: prefer_final_locals
    Object? postBody = employeePresenceReportDTO;

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
  /// * [List<EmployeePresenceReportDTO>] employeePresenceReportDTO (required):
  Future<List<EmployeePresenceReportDTO>?> createReports(List<EmployeePresenceReportDTO> employeePresenceReportDTO,) async {
    final response = await createReportsWithHttpInfo(employeePresenceReportDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmployeePresenceReportDTO>') as List)
        .cast<EmployeePresenceReportDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'DELETE /api/restaurant/deleteemployee/{employeeId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] employeeId (required):
  Future<Response> deleteEmployeeWithHttpInfo(int employeeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/restaurant/deleteemployee/{employeeId}'
      .replaceAll('{employeeId}', employeeId.toString());

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
  /// * [int] employeeId (required):
  Future<void> deleteEmployee(int employeeId,) async {
    final response = await deleteEmployeeWithHttpInfo(employeeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /api/restaurant/report/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> deleteReportWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/restaurant/report/{id}'
      .replaceAll('{id}', id.toString());

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
  /// * [int] id (required):
  Future<void> deleteReport(int id,) async {
    final response = await deleteReportWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/restaurant/getfiredemployeebybranchcode/{branchCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  Future<Response> findFiredEmployeeByBranchCodeWithHttpInfo(String branchCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/restaurant/getfiredemployeebybranchcode/{branchCode}'
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
  Future<List<EmployeeDTO>?> findFiredEmployeeByBranchCode(String branchCode,) async {
    final response = await findFiredEmployeeByBranchCodeWithHttpInfo(branchCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmployeeDTO>') as List)
        .cast<EmployeeDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/restaurant/fireemployee/{employeeId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] employeeId (required):
  Future<Response> fireEmployeeWithHttpInfo(int employeeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/restaurant/fireemployee/{employeeId}'
      .replaceAll('{employeeId}', employeeId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [int] employeeId (required):
  Future<void> fireEmployee(int employeeId,) async {
    final response = await fireEmployeeWithHttpInfo(employeeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/restaurant/employee/getall' operation and returns the [Response].
  Future<Response> getAllEmployeesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/restaurant/employee/getall';

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

  Future<List<EmployeeDTO>?> getAllEmployees() async {
    final response = await getAllEmployeesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmployeeDTO>') as List)
        .cast<EmployeeDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /api/restaurant/getemployee/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> getEmployeeByIdWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/restaurant/getemployee/{id}'
      .replaceAll('{id}', id.toString());

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
  /// * [int] id (required):
  Future<EmployeeDTO?> getEmployeeById(int id,) async {
    final response = await getEmployeeByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmployeeDTO',) as EmployeeDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/restaurant/getemployeebybranchcode/{branchCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  Future<Response> getEmployeeListByBranchCodeWithHttpInfo(String branchCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/restaurant/getemployeebybranchcode/{branchCode}'
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
  Future<List<EmployeeDTO>?> getEmployeeListByBranchCode(String branchCode,) async {
    final response = await getEmployeeListByBranchCodeWithHttpInfo(branchCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmployeeDTO>') as List)
        .cast<EmployeeDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /api/restaurant/getreport/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> getReportByIdWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/restaurant/getreport/{id}'
      .replaceAll('{id}', id.toString());

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
  /// * [int] id (required):
  Future<EmployeePresenceReportDTO?> getReportById(int id,) async {
    final response = await getReportByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmployeePresenceReportDTO',) as EmployeePresenceReportDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/restaurant/retrievereport/{branchCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [DateTime] zonedDateTime (required):
  Future<Response> getReportsByBranchCodeAndDateWithHttpInfo(String branchCode, DateTime zonedDateTime,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/restaurant/retrievereport/{branchCode}'
      .replaceAll('{branchCode}', branchCode);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'zonedDateTime', zonedDateTime));

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
  /// * [DateTime] zonedDateTime (required):
  Future<List<EmployeePresenceReportDTO>?> getReportsByBranchCodeAndDate(String branchCode, DateTime zonedDateTime,) async {
    final response = await getReportsByBranchCodeAndDateWithHttpInfo(branchCode, zonedDateTime,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmployeePresenceReportDTO>') as List)
        .cast<EmployeePresenceReportDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/restaurant/hideemployee/{employeeId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] employeeId (required):
  Future<Response> hideEmployeeWithHttpInfo(int employeeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/restaurant/hideemployee/{employeeId}'
      .replaceAll('{employeeId}', employeeId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [int] employeeId (required):
  Future<void> hideEmployee(int employeeId,) async {
    final response = await hideEmployeeWithHttpInfo(employeeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /api/restaurant/employee/mobiledevice/login/{branchCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [String] username (required):
  ///
  /// * [String] password (required):
  ///
  /// * [MobileDeviceDetails] mobileDeviceDetails (required):
  Future<Response> loginFromMobileDeviceWithHttpInfo(String branchCode, String username, String password, MobileDeviceDetails mobileDeviceDetails,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/restaurant/employee/mobiledevice/login/{branchCode}'
      .replaceAll('{branchCode}', branchCode);

    // ignore: prefer_final_locals
    Object? postBody = mobileDeviceDetails;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'username', username));
      queryParams.addAll(_queryParams('', 'password', password));

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
  /// * [String] username (required):
  ///
  /// * [String] password (required):
  ///
  /// * [MobileDeviceDetails] mobileDeviceDetails (required):
  Future<EmployeeDTO?> loginFromMobileDevice(String branchCode, String username, String password, MobileDeviceDetails mobileDeviceDetails,) async {
    final response = await loginFromMobileDeviceWithHttpInfo(branchCode, username, password, mobileDeviceDetails,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmployeeDTO',) as EmployeeDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/restaurant/restaurant/retrieveconfiguration/{branchCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  Future<Response> retrieveConfigurationWithHttpInfo(String branchCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/restaurant/restaurant/retrieveconfiguration/{branchCode}'
      .replaceAll('{branchCode}', branchCode);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [String] branchCode (required):
  Future<RestaurantDTO?> retrieveConfiguration(String branchCode,) async {
    final response = await retrieveConfigurationWithHttpInfo(branchCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RestaurantDTO',) as RestaurantDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/restaurant/retrievereports/{branchCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [DateTime] initialRangeDate (required):
  ///
  /// * [DateTime] endRangeDate (required):
  Future<Response> retrieveReportsWithHttpInfo(String branchCode, DateTime initialRangeDate, DateTime endRangeDate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/restaurant/retrievereports/{branchCode}'
      .replaceAll('{branchCode}', branchCode);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'initialRangeDate', initialRangeDate));
      queryParams.addAll(_queryParams('', 'endRangeDate', endRangeDate));

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
  /// * [DateTime] initialRangeDate (required):
  ///
  /// * [DateTime] endRangeDate (required):
  Future<List<EmployeeReportSummaryDTO>?> retrieveReports(String branchCode, DateTime initialRangeDate, DateTime endRangeDate,) async {
    final response = await retrieveReportsWithHttpInfo(branchCode, initialRangeDate, endRangeDate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmployeeReportSummaryDTO>') as List)
        .cast<EmployeeReportSummaryDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/restaurant/employee/update/{branchCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [EmployeeDTO] employeeDTO (required):
  Future<Response> updateEmployeeWithHttpInfo(String branchCode, EmployeeDTO employeeDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/restaurant/employee/update/{branchCode}'
      .replaceAll('{branchCode}', branchCode);

    // ignore: prefer_final_locals
    Object? postBody = employeeDTO;

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
  /// * [String] branchCode (required):
  ///
  /// * [EmployeeDTO] employeeDTO (required):
  Future<EmployeeDTO?> updateEmployee(String branchCode, EmployeeDTO employeeDTO,) async {
    final response = await updateEmployeeWithHttpInfo(branchCode, employeeDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmployeeDTO',) as EmployeeDTO;
    
    }
    return null;
  }
}
