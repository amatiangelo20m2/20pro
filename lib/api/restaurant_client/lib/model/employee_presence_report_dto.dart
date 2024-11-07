//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmployeePresenceReportDTO {
  /// Returns a new [EmployeePresenceReportDTO] instance.
  EmployeePresenceReportDTO({
    this.reportId,
    this.branchCode,
    this.employee,
    this.date,
    this.workedHours,
    this.note,
    this.illness,
    this.holiday,
    this.presentAtLunch,
    this.presentAtDinner,
    this.rest,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? reportId;

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
  EmployeeDTO? employee;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? workedHours;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? illness;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? holiday;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? presentAtLunch;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? presentAtDinner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? rest;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmployeePresenceReportDTO &&
    other.reportId == reportId &&
    other.branchCode == branchCode &&
    other.employee == employee &&
    other.date == date &&
    other.workedHours == workedHours &&
    other.note == note &&
    other.illness == illness &&
    other.holiday == holiday &&
    other.presentAtLunch == presentAtLunch &&
    other.presentAtDinner == presentAtDinner &&
    other.rest == rest;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reportId == null ? 0 : reportId!.hashCode) +
    (branchCode == null ? 0 : branchCode!.hashCode) +
    (employee == null ? 0 : employee!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (workedHours == null ? 0 : workedHours!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (illness == null ? 0 : illness!.hashCode) +
    (holiday == null ? 0 : holiday!.hashCode) +
    (presentAtLunch == null ? 0 : presentAtLunch!.hashCode) +
    (presentAtDinner == null ? 0 : presentAtDinner!.hashCode) +
    (rest == null ? 0 : rest!.hashCode);

  @override
  String toString() => 'EmployeePresenceReportDTO[reportId=$reportId, branchCode=$branchCode, employee=$employee, date=$date, workedHours=$workedHours, note=$note, illness=$illness, holiday=$holiday, presentAtLunch=$presentAtLunch, presentAtDinner=$presentAtDinner, rest=$rest]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.reportId != null) {
      json[r'reportId'] = this.reportId;
    } else {
      json[r'reportId'] = null;
    }
    if (this.branchCode != null) {
      json[r'branchCode'] = this.branchCode;
    } else {
      json[r'branchCode'] = null;
    }
    if (this.employee != null) {
      json[r'employee'] = this.employee;
    } else {
      json[r'employee'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date!.toUtc().toIso8601String();
    } else {
      json[r'date'] = null;
    }
    if (this.workedHours != null) {
      json[r'workedHours'] = this.workedHours;
    } else {
      json[r'workedHours'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.illness != null) {
      json[r'illness'] = this.illness;
    } else {
      json[r'illness'] = null;
    }
    if (this.holiday != null) {
      json[r'holiday'] = this.holiday;
    } else {
      json[r'holiday'] = null;
    }
    if (this.presentAtLunch != null) {
      json[r'presentAtLunch'] = this.presentAtLunch;
    } else {
      json[r'presentAtLunch'] = null;
    }
    if (this.presentAtDinner != null) {
      json[r'presentAtDinner'] = this.presentAtDinner;
    } else {
      json[r'presentAtDinner'] = null;
    }
    if (this.rest != null) {
      json[r'rest'] = this.rest;
    } else {
      json[r'rest'] = null;
    }
    return json;
  }

  /// Returns a new [EmployeePresenceReportDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmployeePresenceReportDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmployeePresenceReportDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmployeePresenceReportDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmployeePresenceReportDTO(
        reportId: mapValueOfType<int>(json, r'reportId'),
        branchCode: mapValueOfType<String>(json, r'branchCode'),
        employee: EmployeeDTO.fromJson(json[r'employee']),
        date: mapDateTime(json, r'date', r''),
        workedHours: mapValueOfType<int>(json, r'workedHours'),
        note: mapValueOfType<String>(json, r'note'),
        illness: mapValueOfType<bool>(json, r'illness'),
        holiday: mapValueOfType<bool>(json, r'holiday'),
        presentAtLunch: mapValueOfType<bool>(json, r'presentAtLunch'),
        presentAtDinner: mapValueOfType<bool>(json, r'presentAtDinner'),
        rest: mapValueOfType<bool>(json, r'rest'),
      );
    }
    return null;
  }

  static List<EmployeePresenceReportDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmployeePresenceReportDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmployeePresenceReportDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmployeePresenceReportDTO> mapFromJson(dynamic json) {
    final map = <String, EmployeePresenceReportDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmployeePresenceReportDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmployeePresenceReportDTO-objects as value to a dart map
  static Map<String, List<EmployeePresenceReportDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmployeePresenceReportDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmployeePresenceReportDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

