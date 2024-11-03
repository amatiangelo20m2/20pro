//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SpecialDayDTO {
  /// Returns a new [SpecialDayDTO] instance.
  SpecialDayDTO({
    this.id,
    this.specialDayCode,
    this.specialDate,
    this.timeRanges = const [],
    this.description,
    this.closed,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? specialDayCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? specialDate;

  List<TimeRange> timeRanges;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? closed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpecialDayDTO &&
    other.id == id &&
    other.specialDayCode == specialDayCode &&
    other.specialDate == specialDate &&
    _deepEquality.equals(other.timeRanges, timeRanges) &&
    other.description == description &&
    other.closed == closed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (specialDayCode == null ? 0 : specialDayCode!.hashCode) +
    (specialDate == null ? 0 : specialDate!.hashCode) +
    (timeRanges.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (closed == null ? 0 : closed!.hashCode);

  @override
  String toString() => 'SpecialDayDTO[id=$id, specialDayCode=$specialDayCode, specialDate=$specialDate, timeRanges=$timeRanges, description=$description, closed=$closed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.specialDayCode != null) {
      json[r'specialDayCode'] = this.specialDayCode;
    } else {
      json[r'specialDayCode'] = null;
    }
    if (this.specialDate != null) {
      json[r'specialDate'] = _dateFormatter.format(this.specialDate!.toUtc());
    } else {
      json[r'specialDate'] = null;
    }
      json[r'timeRanges'] = this.timeRanges;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.closed != null) {
      json[r'closed'] = this.closed;
    } else {
      json[r'closed'] = null;
    }
    return json;
  }

  /// Returns a new [SpecialDayDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpecialDayDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpecialDayDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpecialDayDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpecialDayDTO(
        id: mapValueOfType<int>(json, r'id'),
        specialDayCode: mapValueOfType<String>(json, r'specialDayCode'),
        specialDate: mapDateTime(json, r'specialDate', r''),
        timeRanges: TimeRange.listFromJson(json[r'timeRanges']),
        description: mapValueOfType<String>(json, r'description'),
        closed: mapValueOfType<bool>(json, r'closed'),
      );
    }
    return null;
  }

  static List<SpecialDayDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpecialDayDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpecialDayDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpecialDayDTO> mapFromJson(dynamic json) {
    final map = <String, SpecialDayDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpecialDayDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpecialDayDTO-objects as value to a dart map
  static Map<String, List<SpecialDayDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpecialDayDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpecialDayDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

