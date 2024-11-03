//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BranchCreationEntity {
  /// Returns a new [BranchCreationEntity] instance.
  BranchCreationEntity({
    this.branchCode,
    this.userCode,
    this.name,
    this.email,
    this.address,
    this.city,
    this.cap,
    this.phoneNumber,
    this.vat,
    this.type,
    this.logoImage = const [],
    this.fcmToken,
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
  String? userCode;

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
  String? email;

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
  String? phoneNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vat;

  BranchCreationEntityTypeEnum? type;

  List<String> logoImage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fcmToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BranchCreationEntity &&
    other.branchCode == branchCode &&
    other.userCode == userCode &&
    other.name == name &&
    other.email == email &&
    other.address == address &&
    other.city == city &&
    other.cap == cap &&
    other.phoneNumber == phoneNumber &&
    other.vat == vat &&
    other.type == type &&
    _deepEquality.equals(other.logoImage, logoImage) &&
    other.fcmToken == fcmToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (branchCode == null ? 0 : branchCode!.hashCode) +
    (userCode == null ? 0 : userCode!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (cap == null ? 0 : cap!.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
    (vat == null ? 0 : vat!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (logoImage.hashCode) +
    (fcmToken == null ? 0 : fcmToken!.hashCode);

  @override
  String toString() => 'BranchCreationEntity[branchCode=$branchCode, userCode=$userCode, name=$name, email=$email, address=$address, city=$city, cap=$cap, phoneNumber=$phoneNumber, vat=$vat, type=$type, logoImage=$logoImage, fcmToken=$fcmToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.branchCode != null) {
      json[r'branchCode'] = this.branchCode;
    } else {
      json[r'branchCode'] = null;
    }
    if (this.userCode != null) {
      json[r'userCode'] = this.userCode;
    } else {
      json[r'userCode'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
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
    if (this.phoneNumber != null) {
      json[r'phoneNumber'] = this.phoneNumber;
    } else {
      json[r'phoneNumber'] = null;
    }
    if (this.vat != null) {
      json[r'vat'] = this.vat;
    } else {
      json[r'vat'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
      json[r'logoImage'] = this.logoImage;
    if (this.fcmToken != null) {
      json[r'fcmToken'] = this.fcmToken;
    } else {
      json[r'fcmToken'] = null;
    }
    return json;
  }

  /// Returns a new [BranchCreationEntity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BranchCreationEntity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BranchCreationEntity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BranchCreationEntity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BranchCreationEntity(
        branchCode: mapValueOfType<String>(json, r'branchCode'),
        userCode: mapValueOfType<String>(json, r'userCode'),
        name: mapValueOfType<String>(json, r'name'),
        email: mapValueOfType<String>(json, r'email'),
        address: mapValueOfType<String>(json, r'address'),
        city: mapValueOfType<String>(json, r'city'),
        cap: mapValueOfType<String>(json, r'cap'),
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber'),
        vat: mapValueOfType<String>(json, r'vat'),
        type: BranchCreationEntityTypeEnum.fromJson(json[r'type']),
        logoImage: json[r'logoImage'] is Iterable
            ? (json[r'logoImage'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        fcmToken: mapValueOfType<String>(json, r'fcmToken'),
      );
    }
    return null;
  }

  static List<BranchCreationEntity> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BranchCreationEntity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BranchCreationEntity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BranchCreationEntity> mapFromJson(dynamic json) {
    final map = <String, BranchCreationEntity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BranchCreationEntity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BranchCreationEntity-objects as value to a dart map
  static Map<String, List<BranchCreationEntity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BranchCreationEntity>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BranchCreationEntity.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class BranchCreationEntityTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const BranchCreationEntityTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RISTORANTE = BranchCreationEntityTypeEnum._(r'RISTORANTE');
  static const FORNITORE = BranchCreationEntityTypeEnum._(r'FORNITORE');
  static const CATERING = BranchCreationEntityTypeEnum._(r'CATERING');

  /// List of all possible values in this [enum][BranchCreationEntityTypeEnum].
  static const values = <BranchCreationEntityTypeEnum>[
    RISTORANTE,
    FORNITORE,
    CATERING,
  ];

  static BranchCreationEntityTypeEnum? fromJson(dynamic value) => BranchCreationEntityTypeEnumTypeTransformer().decode(value);

  static List<BranchCreationEntityTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BranchCreationEntityTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BranchCreationEntityTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BranchCreationEntityTypeEnum] to String,
/// and [decode] dynamic data back to [BranchCreationEntityTypeEnum].
class BranchCreationEntityTypeEnumTypeTransformer {
  factory BranchCreationEntityTypeEnumTypeTransformer() => _instance ??= const BranchCreationEntityTypeEnumTypeTransformer._();

  const BranchCreationEntityTypeEnumTypeTransformer._();

  String encode(BranchCreationEntityTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BranchCreationEntityTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BranchCreationEntityTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RISTORANTE': return BranchCreationEntityTypeEnum.RISTORANTE;
        case r'FORNITORE': return BranchCreationEntityTypeEnum.FORNITORE;
        case r'CATERING': return BranchCreationEntityTypeEnum.CATERING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BranchCreationEntityTypeEnumTypeTransformer] instance.
  static BranchCreationEntityTypeEnumTypeTransformer? _instance;
}


