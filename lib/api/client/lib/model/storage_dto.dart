//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StorageDTO {
  /// Returns a new [StorageDTO] instance.
  StorageDTO({
    this.storageId,
    this.name,
    this.address,
    this.city,
    this.cap,
    this.creationTime,
    this.inventarioDTOS = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? storageId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cap;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? creationTime;

  Set<InventarioDTO> inventarioDTOS;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StorageDTO &&
    other.storageId == storageId &&
    other.name == name &&
    other.address == address &&
    other.city == city &&
    other.cap == cap &&
    other.creationTime == creationTime &&
    _deepEquality.equals(other.inventarioDTOS, inventarioDTOS);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (storageId == null ? 0 : storageId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (cap == null ? 0 : cap!.hashCode) +
    (creationTime == null ? 0 : creationTime!.hashCode) +
    (inventarioDTOS.hashCode);

  @override
  String toString() => 'StorageDTO[storageId=$storageId, name=$name, address=$address, city=$city, cap=$cap, creationTime=$creationTime, inventarioDTOS=$inventarioDTOS]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.storageId != null) {
      json[r'storageId'] = this.storageId;
    } else {
      json[r'storageId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.cap != null) {
      json[r'cap'] = this.cap;
    } else {
      json[r'cap'] = null;
    }
    if (this.creationTime != null) {
      json[r'creationTime'] = this.creationTime!.toUtc().toIso8601String();
    } else {
      json[r'creationTime'] = null;
    }
      json[r'inventarioDTOS'] = this.inventarioDTOS.toList(growable: false);
    return json;
  }

  /// Returns a new [StorageDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StorageDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StorageDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StorageDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StorageDTO(
        storageId: mapValueOfType<int>(json, r'storageId'),
        name: mapValueOfType<String>(json, r'name'),
        address: mapValueOfType<String>(json, r'address'),
        city: mapValueOfType<String>(json, r'city'),
        cap: mapValueOfType<String>(json, r'cap'),
        creationTime: mapDateTime(json, r'creationTime', r''),
        inventarioDTOS: InventarioDTO.listFromJson(json[r'inventarioDTOS']).toSet(),
      );
    }
    return null;
  }

  static List<StorageDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StorageDTO> mapFromJson(dynamic json) {
    final map = <String, StorageDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StorageDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StorageDTO-objects as value to a dart map
  static Map<String, List<StorageDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StorageDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StorageDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

