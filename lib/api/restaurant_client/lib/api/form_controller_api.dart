//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FormControllerApi {
  FormControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'PUT /api/form/create/defaulttimerange/{formCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] formCode (required):
  ///
  /// * [TimeRange] timeRange (required):
  Future<Response> addDefaultTimeRangeForAllDaysWithHttpInfo(String formCode, TimeRange timeRange,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/form/create/defaulttimerange/{formCode}'
      .replaceAll('{formCode}', formCode);

    // ignore: prefer_final_locals
    Object? postBody = timeRange;

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
  /// * [String] formCode (required):
  ///
  /// * [TimeRange] timeRange (required):
  Future<FormDTO?> addDefaultTimeRangeForAllDays(String formCode, TimeRange timeRange,) async {
    final response = await addDefaultTimeRangeForAllDaysWithHttpInfo(formCode, timeRange,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDTO',) as FormDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/form/add/specialdayconf/{formCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] formCode (required):
  ///
  /// * [DateTime] specialDay (required):
  ///
  /// * [bool] isClosed (required):
  ///
  /// * [String] descriptionSpecialDay (required):
  Future<Response> addSpecialDayConfWithHttpInfo(String formCode, DateTime specialDay, bool isClosed, String descriptionSpecialDay,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/form/add/specialdayconf/{formCode}'
      .replaceAll('{formCode}', formCode);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'specialDay', specialDay));
      queryParams.addAll(_queryParams('', 'isClosed', isClosed));
      queryParams.addAll(_queryParams('', 'descriptionSpecialDay', descriptionSpecialDay));

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
  /// * [String] formCode (required):
  ///
  /// * [DateTime] specialDay (required):
  ///
  /// * [bool] isClosed (required):
  ///
  /// * [String] descriptionSpecialDay (required):
  Future<FormDTO?> addSpecialDayConf(String formCode, DateTime specialDay, bool isClosed, String descriptionSpecialDay,) async {
    final response = await addSpecialDayConfWithHttpInfo(formCode, specialDay, isClosed, descriptionSpecialDay,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDTO',) as FormDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/form/add/timerange/{formCode}/{dayOfWeek}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] formCode (required):
  ///
  /// * [String] dayOfWeek (required):
  ///
  /// * [TimeRange] timeRange (required):
  Future<Response> addTimeRangeWithHttpInfo(String formCode, String dayOfWeek, TimeRange timeRange,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/form/add/timerange/{formCode}/{dayOfWeek}'
      .replaceAll('{formCode}', formCode)
      .replaceAll('{dayOfWeek}', dayOfWeek);

    // ignore: prefer_final_locals
    Object? postBody = timeRange;

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
  /// * [String] formCode (required):
  ///
  /// * [String] dayOfWeek (required):
  ///
  /// * [TimeRange] timeRange (required):
  Future<TimeRange?> addTimeRange(String formCode, String dayOfWeek, TimeRange timeRange,) async {
    final response = await addTimeRangeWithHttpInfo(formCode, dayOfWeek, timeRange,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TimeRange',) as TimeRange;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/form/add/timerange/specialday/{formCode}/{specialDayConfCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] formCode (required):
  ///
  /// * [String] specialDayConfCode (required):
  Future<Response> addTimeRangeSpecialDayWithHttpInfo(String formCode, String specialDayConfCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/form/add/timerange/specialday/{formCode}/{specialDayConfCode}'
      .replaceAll('{formCode}', formCode)
      .replaceAll('{specialDayConfCode}', specialDayConfCode);

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
  /// * [String] formCode (required):
  ///
  /// * [String] specialDayConfCode (required):
  Future<FormDTO?> addTimeRangeSpecialDay(String formCode, String specialDayConfCode,) async {
    final response = await addTimeRangeSpecialDayWithHttpInfo(formCode, specialDayConfCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDTO',) as FormDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/form/create' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [FormDTO] formDTO (required):
  Future<Response> createFormWithHttpInfo(FormDTO formDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/form/create';

    // ignore: prefer_final_locals
    Object? postBody = formDTO;

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
  /// * [FormDTO] formDTO (required):
  Future<FormDTO?> createForm(FormDTO formDTO,) async {
    final response = await createFormWithHttpInfo(formDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDTO',) as FormDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /api/form/delete/configurationrangehours/{formCode}/{timeRangeCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] formCode (required):
  ///
  /// * [String] timeRangeCode (required):
  Future<Response> deleteConfHoursRangeByCodeWithHttpInfo(String formCode, String timeRangeCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/form/delete/configurationrangehours/{formCode}/{timeRangeCode}'
      .replaceAll('{formCode}', formCode)
      .replaceAll('{timeRangeCode}', timeRangeCode);

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
  /// * [String] formCode (required):
  ///
  /// * [String] timeRangeCode (required):
  Future<void> deleteConfHoursRangeByCode(String formCode, String timeRangeCode,) async {
    final response = await deleteConfHoursRangeByCodeWithHttpInfo(formCode, timeRangeCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /api/form/add/holidays/{formCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] formCode (required):
  ///
  /// * [DateTime] dateFrom (required):
  ///
  /// * [DateTime] dateTo (required):
  ///
  /// * [String] description (required):
  Future<Response> insertHolidaysWithHttpInfo(String formCode, DateTime dateFrom, DateTime dateTo, String description,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/form/add/holidays/{formCode}'
      .replaceAll('{formCode}', formCode);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'dateFrom', dateFrom));
      queryParams.addAll(_queryParams('', 'dateTo', dateTo));
      queryParams.addAll(_queryParams('', 'description', description));

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
  /// * [String] formCode (required):
  ///
  /// * [DateTime] dateFrom (required):
  ///
  /// * [DateTime] dateTo (required):
  ///
  /// * [String] description (required):
  Future<FormDTO?> insertHolidays(String formCode, DateTime dateFrom, DateTime dateTo, String description,) async {
    final response = await insertHolidaysWithHttpInfo(formCode, dateFrom, dateTo, description,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDTO',) as FormDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /api/form/resetconf/{formCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] formCode (required):
  Future<Response> resetDefaultConfigurationFormWithHttpInfo(String formCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/form/resetconf/{formCode}'
      .replaceAll('{formCode}', formCode);

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
  /// * [String] formCode (required):
  Future<FormDTO?> resetDefaultConfigurationForm(String formCode,) async {
    final response = await resetDefaultConfigurationFormWithHttpInfo(formCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDTO',) as FormDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/form/retrieveall' operation and returns the [Response].
  Future<Response> retrieveAllWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/form/retrieveall';

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

  Future<List<FormDTO>?> retrieveAll() async {
    final response = await retrieveAllWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormDTO>') as List)
        .cast<FormDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /api/form/retrievebybranchcode/{branchCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  Future<Response> retrieveByBranchCodeWithHttpInfo(String branchCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/form/retrievebybranchcode/{branchCode}'
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
  Future<List<FormDTO>?> retrieveByBranchCode(String branchCode,) async {
    final response = await retrieveByBranchCodeWithHttpInfo(branchCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FormDTO>') as List)
        .cast<FormDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /api/form/retrievebyformcode/{formCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] formCode (required):
  Future<Response> retrieveByFormCodeWithHttpInfo(String formCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/form/retrievebyformcode/{formCode}'
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
  Future<FormDTO?> retrieveByFormCode(String formCode,) async {
    final response = await retrieveByFormCodeWithHttpInfo(formCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDTO',) as FormDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/form/switchOpeningStatus/{formCode}/{dayOfWeek}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] formCode (required):
  ///
  /// * [String] dayOfWeek (required):
  Future<Response> switchOpeningStatusWithHttpInfo(String formCode, String dayOfWeek,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/form/switchOpeningStatus/{formCode}/{dayOfWeek}'
      .replaceAll('{formCode}', formCode)
      .replaceAll('{dayOfWeek}', dayOfWeek);

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
  /// * [String] formCode (required):
  ///
  /// * [String] dayOfWeek (required):
  Future<void> switchOpeningStatus(String formCode, String dayOfWeek,) async {
    final response = await switchOpeningStatusWithHttpInfo(formCode, dayOfWeek,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /api/form/updateform' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [FormDTO] formDTO (required):
  Future<Response> updateFormWithHttpInfo(FormDTO formDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/form/updateform';

    // ignore: prefer_final_locals
    Object? postBody = formDTO;

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
  /// * [FormDTO] formDTO (required):
  Future<FormDTO?> updateForm(FormDTO formDTO,) async {
    final response = await updateFormWithHttpInfo(formDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDTO',) as FormDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/form/update/openinghourconf/{formCode}/{timeRangeCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] formCode (required):
  ///
  /// * [String] timeRangeCode (required):
  ///
  /// * [TimeRange] timeRange (required):
  Future<Response> updateOpeningHourConfByCodeWithHttpInfo(String formCode, String timeRangeCode, TimeRange timeRange,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/form/update/openinghourconf/{formCode}/{timeRangeCode}'
      .replaceAll('{formCode}', formCode)
      .replaceAll('{timeRangeCode}', timeRangeCode);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'timeRange', timeRange));

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
  /// * [String] formCode (required):
  ///
  /// * [String] timeRangeCode (required):
  ///
  /// * [TimeRange] timeRange (required):
  Future<void> updateOpeningHourConfByCode(String formCode, String timeRangeCode, TimeRange timeRange,) async {
    final response = await updateOpeningHourConfByCodeWithHttpInfo(formCode, timeRangeCode, timeRange,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /api/form/update/timerange/{formCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] formCode (required):
  ///
  /// * [List<TimeRange>] timeRange (required):
  Future<Response> updateTimeRangeWithHttpInfo(String formCode, List<TimeRange> timeRange,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/form/update/timerange/{formCode}'
      .replaceAll('{formCode}', formCode);

    // ignore: prefer_final_locals
    Object? postBody = timeRange;

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
  /// * [String] formCode (required):
  ///
  /// * [List<TimeRange>] timeRange (required):
  Future<FormDTO?> updateTimeRange(String formCode, List<TimeRange> timeRange,) async {
    final response = await updateTimeRangeWithHttpInfo(formCode, timeRange,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDTO',) as FormDTO;
    
    }
    return null;
  }
}
