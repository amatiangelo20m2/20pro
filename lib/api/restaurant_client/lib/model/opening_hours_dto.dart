//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OpeningHoursDTO {
  /// Returns a new [OpeningHoursDTO] instance.
  OpeningHoursDTO({
    this.id,
    this.dayOfWeek,
    this.timeRanges = const [],
    this.closed,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  OpeningHoursDTODayOfWeekEnum? dayOfWeek;

  List<TimeRange> timeRanges;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? closed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpeningHoursDTO &&
    other.id == id &&
    other.dayOfWeek == dayOfWeek &&
    _deepEquality.equals(other.timeRanges, timeRanges) &&
    other.closed == closed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (dayOfWeek == null ? 0 : dayOfWeek!.hashCode) +
    (timeRanges.hashCode) +
    (closed == null ? 0 : closed!.hashCode);

  @override
  String toString() => 'OpeningHoursDTO[id=$id, dayOfWeek=$dayOfWeek, timeRanges=$timeRanges, closed=$closed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.dayOfWeek != null) {
      json[r'dayOfWeek'] = this.dayOfWeek;
    } else {
      json[r'dayOfWeek'] = null;
    }
      json[r'timeRanges'] = this.timeRanges;
    if (this.closed != null) {
      json[r'closed'] = this.closed;
    } else {
      json[r'closed'] = null;
    }
    return json;
  }

  /// Returns a new [OpeningHoursDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpeningHoursDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpeningHoursDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpeningHoursDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpeningHoursDTO(
        id: mapValueOfType<int>(json, r'id'),
        dayOfWeek: OpeningHoursDTODayOfWeekEnum.fromJson(json[r'dayOfWeek']),
        timeRanges: TimeRange.listFromJson(json[r'timeRanges']),
        closed: mapValueOfType<bool>(json, r'closed'),
      );
    }
    return null;
  }

  static List<OpeningHoursDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpeningHoursDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpeningHoursDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpeningHoursDTO> mapFromJson(dynamic json) {
    final map = <String, OpeningHoursDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpeningHoursDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpeningHoursDTO-objects as value to a dart map
  static Map<String, List<OpeningHoursDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpeningHoursDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpeningHoursDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class OpeningHoursDTODayOfWeekEnum {
  /// Instantiate a new enum with the provided [value].
  const OpeningHoursDTODayOfWeekEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MONDAY = OpeningHoursDTODayOfWeekEnum._(r'MONDAY');
  static const TUESDAY = OpeningHoursDTODayOfWeekEnum._(r'TUESDAY');
  static const WEDNESDAY = OpeningHoursDTODayOfWeekEnum._(r'WEDNESDAY');
  static const THURSDAY = OpeningHoursDTODayOfWeekEnum._(r'THURSDAY');
  static const FRIDAY = OpeningHoursDTODayOfWeekEnum._(r'FRIDAY');
  static const SATURDAY = OpeningHoursDTODayOfWeekEnum._(r'SATURDAY');
  static const SUNDAY = OpeningHoursDTODayOfWeekEnum._(r'SUNDAY');

  /// List of all possible values in this [enum][OpeningHoursDTODayOfWeekEnum].
  static const values = <OpeningHoursDTODayOfWeekEnum>[
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    FRIDAY,
    SATURDAY,
    SUNDAY,
  ];

  static OpeningHoursDTODayOfWeekEnum? fromJson(dynamic value) => OpeningHoursDTODayOfWeekEnumTypeTransformer().decode(value);

  static List<OpeningHoursDTODayOfWeekEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpeningHoursDTODayOfWeekEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpeningHoursDTODayOfWeekEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OpeningHoursDTODayOfWeekEnum] to String,
/// and [decode] dynamic data back to [OpeningHoursDTODayOfWeekEnum].
class OpeningHoursDTODayOfWeekEnumTypeTransformer {
  factory OpeningHoursDTODayOfWeekEnumTypeTransformer() => _instance ??= const OpeningHoursDTODayOfWeekEnumTypeTransformer._();

  const OpeningHoursDTODayOfWeekEnumTypeTransformer._();

  String encode(OpeningHoursDTODayOfWeekEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OpeningHoursDTODayOfWeekEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OpeningHoursDTODayOfWeekEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MONDAY': return OpeningHoursDTODayOfWeekEnum.MONDAY;
        case r'TUESDAY': return OpeningHoursDTODayOfWeekEnum.TUESDAY;
        case r'WEDNESDAY': return OpeningHoursDTODayOfWeekEnum.WEDNESDAY;
        case r'THURSDAY': return OpeningHoursDTODayOfWeekEnum.THURSDAY;
        case r'FRIDAY': return OpeningHoursDTODayOfWeekEnum.FRIDAY;
        case r'SATURDAY': return OpeningHoursDTODayOfWeekEnum.SATURDAY;
        case r'SUNDAY': return OpeningHoursDTODayOfWeekEnum.SUNDAY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OpeningHoursDTODayOfWeekEnumTypeTransformer] instance.
  static OpeningHoursDTODayOfWeekEnumTypeTransformer? _instance;
}


