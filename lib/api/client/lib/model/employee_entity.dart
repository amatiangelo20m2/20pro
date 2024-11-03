//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmployeeEntity {
  /// Returns a new [EmployeeEntity] instance.
  EmployeeEntity({
    this.name,
    this.phone,
    this.email,
    this.avatar,
    this.status,
    this.userCode,
    this.fcmToken,
    this.branchCode,
    this.branchName,
    this.role,
    this.authorized,
  });

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
  String? phone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? avatar;

  EmployeeEntityStatusEnum? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userCode;

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
  String? branchCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branchName;

  EmployeeEntityRoleEnum? role;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? authorized;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmployeeEntity &&
    other.name == name &&
    other.phone == phone &&
    other.email == email &&
    other.avatar == avatar &&
    other.status == status &&
    other.userCode == userCode &&
    other.fcmToken == fcmToken &&
    other.branchCode == branchCode &&
    other.branchName == branchName &&
    other.role == role &&
    other.authorized == authorized;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (avatar == null ? 0 : avatar!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (userCode == null ? 0 : userCode!.hashCode) +
    (fcmToken == null ? 0 : fcmToken!.hashCode) +
    (branchCode == null ? 0 : branchCode!.hashCode) +
    (branchName == null ? 0 : branchName!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (authorized == null ? 0 : authorized!.hashCode);

  @override
  String toString() => 'EmployeeEntity[name=$name, phone=$phone, email=$email, avatar=$avatar, status=$status, userCode=$userCode, fcmToken=$fcmToken, branchCode=$branchCode, branchName=$branchName, role=$role, authorized=$authorized]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.avatar != null) {
      json[r'avatar'] = this.avatar;
    } else {
      json[r'avatar'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.userCode != null) {
      json[r'userCode'] = this.userCode;
    } else {
      json[r'userCode'] = null;
    }
    if (this.fcmToken != null) {
      json[r'fcmToken'] = this.fcmToken;
    } else {
      json[r'fcmToken'] = null;
    }
    if (this.branchCode != null) {
      json[r'branchCode'] = this.branchCode;
    } else {
      json[r'branchCode'] = null;
    }
    if (this.branchName != null) {
      json[r'branchName'] = this.branchName;
    } else {
      json[r'branchName'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.authorized != null) {
      json[r'authorized'] = this.authorized;
    } else {
      json[r'authorized'] = null;
    }
    return json;
  }

  /// Returns a new [EmployeeEntity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmployeeEntity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmployeeEntity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmployeeEntity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmployeeEntity(
        name: mapValueOfType<String>(json, r'name'),
        phone: mapValueOfType<String>(json, r'phone'),
        email: mapValueOfType<String>(json, r'email'),
        avatar: mapValueOfType<String>(json, r'avatar'),
        status: EmployeeEntityStatusEnum.fromJson(json[r'status']),
        userCode: mapValueOfType<String>(json, r'userCode'),
        fcmToken: mapValueOfType<String>(json, r'fcmToken'),
        branchCode: mapValueOfType<String>(json, r'branchCode'),
        branchName: mapValueOfType<String>(json, r'branchName'),
        role: EmployeeEntityRoleEnum.fromJson(json[r'role']),
        authorized: mapValueOfType<bool>(json, r'authorized'),
      );
    }
    return null;
  }

  static List<EmployeeEntity> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmployeeEntity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmployeeEntity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmployeeEntity> mapFromJson(dynamic json) {
    final map = <String, EmployeeEntity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmployeeEntity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmployeeEntity-objects as value to a dart map
  static Map<String, List<EmployeeEntity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmployeeEntity>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmployeeEntity.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class EmployeeEntityStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const EmployeeEntityStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ONLINE = EmployeeEntityStatusEnum._(r'ONLINE');
  static const AWAY = EmployeeEntityStatusEnum._(r'AWAY');
  static const BUSY = EmployeeEntityStatusEnum._(r'BUSY');
  static const INVISIBLE = EmployeeEntityStatusEnum._(r'INVISIBLE');

  /// List of all possible values in this [enum][EmployeeEntityStatusEnum].
  static const values = <EmployeeEntityStatusEnum>[
    ONLINE,
    AWAY,
    BUSY,
    INVISIBLE,
  ];

  static EmployeeEntityStatusEnum? fromJson(dynamic value) => EmployeeEntityStatusEnumTypeTransformer().decode(value);

  static List<EmployeeEntityStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmployeeEntityStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmployeeEntityStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmployeeEntityStatusEnum] to String,
/// and [decode] dynamic data back to [EmployeeEntityStatusEnum].
class EmployeeEntityStatusEnumTypeTransformer {
  factory EmployeeEntityStatusEnumTypeTransformer() => _instance ??= const EmployeeEntityStatusEnumTypeTransformer._();

  const EmployeeEntityStatusEnumTypeTransformer._();

  String encode(EmployeeEntityStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmployeeEntityStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmployeeEntityStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ONLINE': return EmployeeEntityStatusEnum.ONLINE;
        case r'AWAY': return EmployeeEntityStatusEnum.AWAY;
        case r'BUSY': return EmployeeEntityStatusEnum.BUSY;
        case r'INVISIBLE': return EmployeeEntityStatusEnum.INVISIBLE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmployeeEntityStatusEnumTypeTransformer] instance.
  static EmployeeEntityStatusEnumTypeTransformer? _instance;
}



class EmployeeEntityRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const EmployeeEntityRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AMMINISTRATORE = EmployeeEntityRoleEnum._(r'AMMINISTRATORE');
  static const RESPONSABILE = EmployeeEntityRoleEnum._(r'RESPONSABILE');
  static const FACTOTUM = EmployeeEntityRoleEnum._(r'FACTOTUM');
  static const RESPONSABILE_MAGAZZINO = EmployeeEntityRoleEnum._(r'RESPONSABILE_MAGAZZINO');
  static const BARMAN = EmployeeEntityRoleEnum._(r'BARMAN');
  static const CUOCO = EmployeeEntityRoleEnum._(r'CUOCO');
  static const CAMERIERE = EmployeeEntityRoleEnum._(r'CAMERIERE');

  /// List of all possible values in this [enum][EmployeeEntityRoleEnum].
  static const values = <EmployeeEntityRoleEnum>[
    AMMINISTRATORE,
    RESPONSABILE,
    FACTOTUM,
    RESPONSABILE_MAGAZZINO,
    BARMAN,
    CUOCO,
    CAMERIERE,
  ];

  static EmployeeEntityRoleEnum? fromJson(dynamic value) => EmployeeEntityRoleEnumTypeTransformer().decode(value);

  static List<EmployeeEntityRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmployeeEntityRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmployeeEntityRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmployeeEntityRoleEnum] to String,
/// and [decode] dynamic data back to [EmployeeEntityRoleEnum].
class EmployeeEntityRoleEnumTypeTransformer {
  factory EmployeeEntityRoleEnumTypeTransformer() => _instance ??= const EmployeeEntityRoleEnumTypeTransformer._();

  const EmployeeEntityRoleEnumTypeTransformer._();

  String encode(EmployeeEntityRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmployeeEntityRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmployeeEntityRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AMMINISTRATORE': return EmployeeEntityRoleEnum.AMMINISTRATORE;
        case r'RESPONSABILE': return EmployeeEntityRoleEnum.RESPONSABILE;
        case r'FACTOTUM': return EmployeeEntityRoleEnum.FACTOTUM;
        case r'RESPONSABILE_MAGAZZINO': return EmployeeEntityRoleEnum.RESPONSABILE_MAGAZZINO;
        case r'BARMAN': return EmployeeEntityRoleEnum.BARMAN;
        case r'CUOCO': return EmployeeEntityRoleEnum.CUOCO;
        case r'CAMERIERE': return EmployeeEntityRoleEnum.CAMERIERE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmployeeEntityRoleEnumTypeTransformer] instance.
  static EmployeeEntityRoleEnumTypeTransformer? _instance;
}


