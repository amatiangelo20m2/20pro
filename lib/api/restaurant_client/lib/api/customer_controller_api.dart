//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CustomerControllerApi {
  CustomerControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /api/customer/retrieve/{prefix}/{phoneNumber}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] prefix (required):
  ///
  /// * [String] phoneNumber (required):
  Future<Response> findcustomerByPhoneAndPrefixWithHttpInfo(String prefix, String phoneNumber,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/customer/retrieve/{prefix}/{phoneNumber}'
      .replaceAll('{prefix}', prefix)
      .replaceAll('{phoneNumber}', phoneNumber);

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
  /// * [String] phoneNumber (required):
  Future<CustomerDTO?> findcustomerByPhoneAndPrefix(String prefix, String phoneNumber,) async {
    final response = await findcustomerByPhoneAndPrefixWithHttpInfo(prefix, phoneNumber,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CustomerDTO',) as CustomerDTO;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/customer/save' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CustomerDTO] customerDTO (required):
  Future<Response> saveWithHttpInfo(CustomerDTO customerDTO,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/customer/save';

    // ignore: prefer_final_locals
    Object? postBody = customerDTO;

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
  /// * [CustomerDTO] customerDTO (required):
  Future<CustomerDTO?> save(CustomerDTO customerDTO,) async {
    final response = await saveWithHttpInfo(customerDTO,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CustomerDTO',) as CustomerDTO;
    
    }
    return null;
  }
}
