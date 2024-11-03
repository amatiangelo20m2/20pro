//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RestaurantDTO {
  /// Returns a new [RestaurantDTO] instance.
  RestaurantDTO({
    this.branchCode,
    this.creationDate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branchCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? creationDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RestaurantDTO &&
    other.branchCode == branchCode &&
    other.creationDate == creationDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (branchCode == null ? 0 : branchCode!.hashCode) +
    (creationDate == null ? 0 : creationDate!.hashCode);

  @override
  String toString() => 'RestaurantDTO[branchCode=$branchCode, creationDate=$creationDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.branchCode != null) {
      json[r'branchCode'] = this.branchCode;
    } else {
      json[r'branchCode'] = null;
    }
    if (this.creationDate != null) {
      json[r'creationDate'] = this.creationDate!.toUtc().toIso8601String();
    } else {
      json[r'creationDate'] = null;
    }
    return json;
  }

  /// Returns a new [RestaurantDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RestaurantDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RestaurantDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RestaurantDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RestaurantDTO(
        branchCode: mapValueOfType<String>(json, r'branchCode'),
        creationDate: mapDateTime(json, r'creationDate', r''),
      );
    }
    return null;
  }

  static List<RestaurantDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RestaurantDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RestaurantDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RestaurantDTO> mapFromJson(dynamic json) {
    final map = <String, RestaurantDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RestaurantDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RestaurantDTO-objects as value to a dart map
  static Map<String, List<RestaurantDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RestaurantDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RestaurantDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

