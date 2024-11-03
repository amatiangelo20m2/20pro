//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BranchControllerApi {
  BranchControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'PUT /api/confirmemployee' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [String] userCode (required):
  ///
  /// * [String] adminUserCode (required):
  Future<Response> confirmEmployeeWithHttpInfo(String branchCode, String userCode, String adminUserCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/confirmemployee';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'branchCode', branchCode));
      queryParams.addAll(_queryParams('', 'userCode', userCode));
      queryParams.addAll(_queryParams('', 'adminUserCode', adminUserCode));

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
  /// * [String] branchCode (required):
  ///
  /// * [String] userCode (required):
  ///
  /// * [String] adminUserCode (required):
  Future<void> confirmEmployee(String branchCode, String userCode, String adminUserCode,) async {
    final response = await confirmEmployeeWithHttpInfo(branchCode, userCode, adminUserCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /api/branch/delete' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  Future<Response> deleteWithHttpInfo(String branchCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/branch/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'branchCode', branchCode));

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
  /// * [String] branchCode (required):
  Future<Object?> delete(String branchCode,) async {
    final response = await deleteWithHttpInfo(branchCode,);
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

  /// Performs an HTTP 'GET /api/branchdatabybranchcode' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  Future<Response> getBranchDataByBranchCodeWithHttpInfo(String branchCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/branchdatabybranchcode';

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
  Future<BranchResponseEntity?> getBranchDataByBranchCode(String branchCode,) async {
    final response = await getBranchDataByBranchCodeWithHttpInfo(branchCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BranchResponseEntity',) as BranchResponseEntity;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/branchdatabybranchcodeanduser' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userCode (required):
  ///
  /// * [String] branchCode (required):
  Future<Response> getBranchDataByBranchCodeAndUserCodeWithHttpInfo(String userCode, String branchCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/branchdatabybranchcodeanduser';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'userCode', userCode));
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
  /// * [String] userCode (required):
  ///
  /// * [String] branchCode (required):
  Future<BranchResponseEntity?> getBranchDataByBranchCodeAndUserCode(String userCode, String branchCode,) async {
    final response = await getBranchDataByBranchCodeAndUserCodeWithHttpInfo(userCode, branchCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BranchResponseEntity',) as BranchResponseEntity;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/branchdatabybranchtype' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchType (required):
  Future<Response> getBranchDataByBranchTypeWithHttpInfo(String branchType,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/branchdatabybranchtype';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'branchType', branchType));

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
  /// * [String] branchType (required):
  Future<List<BranchResponseEntity>?> getBranchDataByBranchType(String branchType,) async {
    final response = await getBranchDataByBranchTypeWithHttpInfo(branchType,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BranchResponseEntity>') as List)
        .cast<BranchResponseEntity>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /api/retrieveemployeebybranchcode' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  Future<Response> getEmployeeByBranchCodeWithHttpInfo(String branchCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/retrieveemployeebybranchcode';

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
  Future<List<EmployeeEntity>?> getEmployeeByBranchCode(String branchCode,) async {
    final response = await getEmployeeByBranchCodeWithHttpInfo(branchCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmployeeEntity>') as List)
        .cast<EmployeeEntity>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'GET /api/retrieveemployeebyusercode' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userCode (required):
  Future<Response> getEmployeeByUserCodeWithHttpInfo(String userCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/retrieveemployeebyusercode';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'userCode', userCode));

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
  /// * [String] userCode (required):
  Future<List<EmployeeEntity>?> getEmployeeByUserCode(String userCode,) async {
    final response = await getEmployeeByUserCodeWithHttpInfo(userCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmployeeEntity>') as List)
        .cast<EmployeeEntity>()
        .toList(growable: false);

    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/linkusertobranch' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userName (required):
  ///
  /// * [String] userCode (required):
  ///
  /// * [List<String>] branchCodes (required):
  ///
  /// * [String] role (required):
  ///
  /// * [String] fcmToken (required):
  Future<Response> linkUserToBranchWithHttpInfo(String userName, String userCode, List<String> branchCodes, String role, String fcmToken,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/linkusertobranch';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'userName', userName));
      queryParams.addAll(_queryParams('', 'userCode', userCode));
      queryParams.addAll(_queryParams('multi', 'branchCodes', branchCodes));
      queryParams.addAll(_queryParams('', 'role', role));
      queryParams.addAll(_queryParams('', 'fcmToken', fcmToken));

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
  /// * [String] userName (required):
  ///
  /// * [String] userCode (required):
  ///
  /// * [List<String>] branchCodes (required):
  ///
  /// * [String] role (required):
  ///
  /// * [String] fcmToken (required):
  Future<VentiMetriQuadriData?> linkUserToBranch(String userName, String userCode, List<String> branchCodes, String role, String fcmToken,) async {
    final response = await linkUserToBranchWithHttpInfo(userName, userCode, branchCodes, role, fcmToken,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VentiMetriQuadriData',) as VentiMetriQuadriData;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /api/branch/removefromuserlist' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userCode (required):
  ///
  /// * [String] branchCode (required):
  Future<Response> removeUserFromBranchWithHttpInfo(String userCode, String branchCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/branch/removefromuserlist';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'userCode', userCode));
      queryParams.addAll(_queryParams('', 'branchCode', branchCode));

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
  /// * [String] userCode (required):
  ///
  /// * [String] branchCode (required):
  Future<Object?> removeUserFromBranch(String userCode, String branchCode,) async {
    final response = await removeUserFromBranchWithHttpInfo(userCode, branchCode,);
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

  /// Performs an HTTP 'GET /api/retrieveall' operation and returns the [Response].
  Future<Response> retrieveAllWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/retrieveall';

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

  Future<VentiMetriQuadriData?> retrieveAll() async {
    final response = await retrieveAllWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VentiMetriQuadriData',) as VentiMetriQuadriData;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/retrievebranchbyusercodeandbranchcode' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userCode (required):
  ///
  /// * [String] branchCode (required):
  Future<Response> retrieveBranchByUserCodeAndBranchCodeWithHttpInfo(String userCode, String branchCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/retrievebranchbyusercodeandbranchcode';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'userCode', userCode));
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
  /// * [String] userCode (required):
  ///
  /// * [String] branchCode (required):
  Future<BranchResponseEntity?> retrieveBranchByUserCodeAndBranchCode(String userCode, String branchCode,) async {
    final response = await retrieveBranchByUserCodeAndBranchCodeWithHttpInfo(userCode, branchCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BranchResponseEntity',) as BranchResponseEntity;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/retrievebranchcounters/{branchCode}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  Future<Response> retrieveBranchCountersWithHttpInfo(String branchCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/retrievebranchcounters/{branchCode}'
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
  Future<CounterEntity?> retrieveBranchCounters(String branchCode,) async {
    final response = await retrieveBranchCountersWithHttpInfo(branchCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CounterEntity',) as CounterEntity;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/retrievedata' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userCode (required):
  ///
  /// * [String] fcmToken:
  Future<Response> retrieveDataWithHttpInfo(String userCode, { String? fcmToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/retrievedata';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'userCode', userCode));
    if (fcmToken != null) {
      queryParams.addAll(_queryParams('', 'fcmToken', fcmToken));
    }

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
  /// * [String] userCode (required):
  ///
  /// * [String] fcmToken:
  Future<VentiMetriQuadriData?> retrieveData(String userCode, { String? fcmToken, }) async {
    final response = await retrieveDataWithHttpInfo(userCode,  fcmToken: fcmToken, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VentiMetriQuadriData',) as VentiMetriQuadriData;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/branch/save' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [BranchCreationEntity] branchCreationEntity (required):
  Future<Response> saveWithHttpInfo(BranchCreationEntity branchCreationEntity,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/branch/save';

    // ignore: prefer_final_locals
    Object? postBody = branchCreationEntity;

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
  /// * [BranchCreationEntity] branchCreationEntity (required):
  Future<BranchResponseEntity?> save(BranchCreationEntity branchCreationEntity,) async {
    final response = await saveWithHttpInfo(branchCreationEntity,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BranchResponseEntity',) as BranchResponseEntity;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/setfmctoken' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] userCode (required):
  ///
  /// * [String] branchCode (required):
  ///
  /// * [String] fcmToken (required):
  Future<Response> setFcmTokenWithHttpInfo(String userCode, String branchCode, String fcmToken,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/setfmctoken';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'userCode', userCode));
      queryParams.addAll(_queryParams('', 'branchCode', branchCode));
      queryParams.addAll(_queryParams('', 'fcmToken', fcmToken));

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
  /// * [String] userCode (required):
  ///
  /// * [String] branchCode (required):
  ///
  /// * [String] fcmToken (required):
  Future<void> setFcmToken(String userCode, String branchCode, String fcmToken,) async {
    final response = await setFcmTokenWithHttpInfo(userCode, branchCode, fcmToken,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /api/updatebranchdata' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [BranchCreationEntity] branchCreationEntity (required):
  Future<Response> updateBranchDataWithHttpInfo(BranchCreationEntity branchCreationEntity,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/updatebranchdata';

    // ignore: prefer_final_locals
    Object? postBody = branchCreationEntity;

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
  /// * [BranchCreationEntity] branchCreationEntity (required):
  Future<Object?> updateBranchData(BranchCreationEntity branchCreationEntity,) async {
    final response = await updateBranchDataWithHttpInfo(branchCreationEntity,);
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

  /// Performs an HTTP 'PUT /api/update/employeerole' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] branchCode (required):
  ///
  /// * [String] userCode (required):
  ///
  /// * [String] role (required):
  Future<Response> updateEmployeeRoleWithHttpInfo(String branchCode, String userCode, String role,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/update/employeerole';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'branchCode', branchCode));
      queryParams.addAll(_queryParams('', 'userCode', userCode));
      queryParams.addAll(_queryParams('', 'role', role));

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
  /// * [String] branchCode (required):
  ///
  /// * [String] userCode (required):
  ///
  /// * [String] role (required):
  Future<void> updateEmployeeRole(String branchCode, String userCode, String role,) async {
    final response = await updateEmployeeRoleWithHttpInfo(branchCode, userCode, role,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
