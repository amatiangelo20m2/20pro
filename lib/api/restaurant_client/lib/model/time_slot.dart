//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TimeSlot {
  /// Returns a new [TimeSlot] instance.
  TimeSlot({
    this.timeRangeCode,
    this.bookingHour,
    this.bookingMinutes,
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
  int? bookingHour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bookingMinutes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeSlot &&
    other.timeRangeCode == timeRangeCode &&
    other.bookingHour == bookingHour &&
    other.bookingMinutes == bookingMinutes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timeRangeCode == null ? 0 : timeRangeCode!.hashCode) +
    (bookingHour == null ? 0 : bookingHour!.hashCode) +
    (bookingMinutes == null ? 0 : bookingMinutes!.hashCode);

  @override
  String toString() => 'TimeSlot[timeRangeCode=$timeRangeCode, bookingHour=$bookingHour, bookingMinutes=$bookingMinutes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.timeRangeCode != null) {
      json[r'timeRangeCode'] = this.timeRangeCode;
    } else {
      json[r'timeRangeCode'] = null;
    }
    if (this.bookingHour != null) {
      json[r'bookingHour'] = this.bookingHour;
    } else {
      json[r'bookingHour'] = null;
    }
    if (this.bookingMinutes != null) {
      json[r'bookingMinutes'] = this.bookingMinutes;
    } else {
      json[r'bookingMinutes'] = null;
    }
    return json;
  }

  /// Returns a new [TimeSlot] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeSlot? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeSlot[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeSlot[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeSlot(
        timeRangeCode: mapValueOfType<String>(json, r'timeRangeCode'),
        bookingHour: mapValueOfType<int>(json, r'bookingHour'),
        bookingMinutes: mapValueOfType<int>(json, r'bookingMinutes'),
      );
    }
    return null;
  }

  static List<TimeSlot> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeSlot>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeSlot.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeSlot> mapFromJson(dynamic json) {
    final map = <String, TimeSlot>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeSlot.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeSlot-objects as value to a dart map
  static Map<String, List<TimeSlot>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimeSlot>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TimeSlot.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

