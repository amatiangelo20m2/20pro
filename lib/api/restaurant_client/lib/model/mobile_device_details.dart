//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MobileDeviceDetails {
  /// Returns a new [MobileDeviceDetails] instance.
  MobileDeviceDetails({
    this.uniquePhoneIdentifier,
    this.platform,
    this.model,
    this.system,
    this.machine,
    this.release,
    this.systemVersion,
    this.fcmToken,
    this.registrationDate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uniquePhoneIdentifier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? system;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? machine;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? release;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? systemVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fcmToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? registrationDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MobileDeviceDetails &&
    other.uniquePhoneIdentifier == uniquePhoneIdentifier &&
    other.platform == platform &&
    other.model == model &&
    other.system == system &&
    other.machine == machine &&
    other.release == release &&
    other.systemVersion == systemVersion &&
    other.fcmToken == fcmToken &&
    other.registrationDate == registrationDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uniquePhoneIdentifier == null ? 0 : uniquePhoneIdentifier!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (system == null ? 0 : system!.hashCode) +
    (machine == null ? 0 : machine!.hashCode) +
    (release == null ? 0 : release!.hashCode) +
    (systemVersion == null ? 0 : systemVersion!.hashCode) +
    (fcmToken == null ? 0 : fcmToken!.hashCode) +
    (registrationDate == null ? 0 : registrationDate!.hashCode);

  @override
  String toString() => 'MobileDeviceDetails[uniquePhoneIdentifier=$uniquePhoneIdentifier, platform=$platform, model=$model, system=$system, machine=$machine, release=$release, systemVersion=$systemVersion, fcmToken=$fcmToken, registrationDate=$registrationDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.uniquePhoneIdentifier != null) {
      json[r'uniquePhoneIdentifier'] = this.uniquePhoneIdentifier;
    } else {
      json[r'uniquePhoneIdentifier'] = null;
    }
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.system != null) {
      json[r'system'] = this.system;
    } else {
      json[r'system'] = null;
    }
    if (this.machine != null) {
      json[r'machine'] = this.machine;
    } else {
      json[r'machine'] = null;
    }
    if (this.release != null) {
      json[r'release'] = this.release;
    } else {
      json[r'release'] = null;
    }
    if (this.systemVersion != null) {
      json[r'system_version'] = this.systemVersion;
    } else {
      json[r'system_version'] = null;
    }
    if (this.fcmToken != null) {
      json[r'fcmToken'] = this.fcmToken;
    } else {
      json[r'fcmToken'] = null;
    }
    if (this.registrationDate != null) {
      json[r'registrationDate'] = this.registrationDate!.toUtc().toIso8601String();
    } else {
      json[r'registrationDate'] = null;
    }
    return json;
  }

  /// Returns a new [MobileDeviceDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MobileDeviceDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MobileDeviceDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MobileDeviceDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MobileDeviceDetails(
        uniquePhoneIdentifier: mapValueOfType<String>(json, r'uniquePhoneIdentifier'),
        platform: mapValueOfType<String>(json, r'platform'),
        model: mapValueOfType<String>(json, r'model'),
        system: mapValueOfType<String>(json, r'system'),
        machine: mapValueOfType<String>(json, r'machine'),
        release: mapValueOfType<String>(json, r'release'),
        systemVersion: mapValueOfType<String>(json, r'system_version'),
        fcmToken: mapValueOfType<String>(json, r'fcmToken'),
        registrationDate: mapDateTime(json, r'registrationDate', r''),
      );
    }
    return null;
  }

  static List<MobileDeviceDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MobileDeviceDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MobileDeviceDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MobileDeviceDetails> mapFromJson(dynamic json) {
    final map = <String, MobileDeviceDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MobileDeviceDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MobileDeviceDetails-objects as value to a dart map
  static Map<String, List<MobileDeviceDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MobileDeviceDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MobileDeviceDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

