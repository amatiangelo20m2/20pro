//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TimeRange {
  /// Returns a new [TimeRange] instance.
  TimeRange({
    this.timeRangeCode,
    this.openingHour,
    this.openingMinutes,
    this.closingHour,
    this.closingMinutes,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timeRangeCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? openingHour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? openingMinutes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? closingHour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? closingMinutes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeRange &&
    other.timeRangeCode == timeRangeCode &&
    other.openingHour == openingHour &&
    other.openingMinutes == openingMinutes &&
    other.closingHour == closingHour &&
    other.closingMinutes == closingMinutes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timeRangeCode == null ? 0 : timeRangeCode!.hashCode) +
    (openingHour == null ? 0 : openingHour!.hashCode) +
    (openingMinutes == null ? 0 : openingMinutes!.hashCode) +
    (closingHour == null ? 0 : closingHour!.hashCode) +
    (closingMinutes == null ? 0 : closingMinutes!.hashCode);

  @override
  String toString() => 'TimeRange[timeRangeCode=$timeRangeCode, openingHour=$openingHour, openingMinutes=$openingMinutes, closingHour=$closingHour, closingMinutes=$closingMinutes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.timeRangeCode != null) {
      json[r'timeRangeCode'] = this.timeRangeCode;
    } else {
      json[r'timeRangeCode'] = null;
    }
    if (this.openingHour != null) {
      json[r'openingHour'] = this.openingHour;
    } else {
      json[r'openingHour'] = null;
    }
    if (this.openingMinutes != null) {
      json[r'openingMinutes'] = this.openingMinutes;
    } else {
      json[r'openingMinutes'] = null;
    }
    if (this.closingHour != null) {
      json[r'closingHour'] = this.closingHour;
    } else {
      json[r'closingHour'] = null;
    }
    if (this.closingMinutes != null) {
      json[r'closingMinutes'] = this.closingMinutes;
    } else {
      json[r'closingMinutes'] = null;
    }
    return json;
  }

  /// Returns a new [TimeRange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeRange? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeRange[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeRange[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeRange(
        timeRangeCode: mapValueOfType<String>(json, r'timeRangeCode'),
        openingHour: mapValueOfType<int>(json, r'openingHour'),
        openingMinutes: mapValueOfType<int>(json, r'openingMinutes'),
        closingHour: mapValueOfType<int>(json, r'closingHour'),
        closingMinutes: mapValueOfType<int>(json, r'closingMinutes'),
      );
    }
    return null;
  }

  static List<TimeRange> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeRange>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeRange.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeRange> mapFromJson(dynamic json) {
    final map = <String, TimeRange>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeRange.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeRange-objects as value to a dart map
  static Map<String, List<TimeRange>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimeRange>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TimeRange.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

