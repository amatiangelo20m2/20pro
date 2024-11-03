//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BranchResponseEntity {
  /// Returns a new [BranchResponseEntity] instance.
  BranchResponseEntity({
    this.branchId,
    this.name,
    this.address,
    this.email,
    this.phone,
    this.vat,
    this.type,
    this.branchCode,
    this.role,
    this.logoImage = const [],
    this.authorized,
    this.supplierDTOList = const [],
    this.storageDTOS = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? branchId;

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
  String? email;

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
  String? vat;

  BranchResponseEntityTypeEnum? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branchCode;

  BranchResponseEntityRoleEnum? role;

  List<String> logoImage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? authorized;

  List<SupplierDTO> supplierDTOList;

  List<StorageDTO> storageDTOS;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BranchResponseEntity &&
    other.branchId == branchId &&
    other.name == name &&
    other.address == address &&
    other.email == email &&
    other.phone == phone &&
    other.vat == vat &&
    other.type == type &&
    other.branchCode == branchCode &&
    other.role == role &&
    _deepEquality.equals(other.logoImage, logoImage) &&
    other.authorized == authorized &&
    _deepEquality.equals(other.supplierDTOList, supplierDTOList) &&
    _deepEquality.equals(other.storageDTOS, storageDTOS);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (branchId == null ? 0 : branchId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (vat == null ? 0 : vat!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (branchCode == null ? 0 : branchCode!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (logoImage.hashCode) +
    (authorized == null ? 0 : authorized!.hashCode) +
    (supplierDTOList.hashCode) +
    (storageDTOS.hashCode);

  @override
  String toString() => 'BranchResponseEntity[branchId=$branchId, name=$name, address=$address, email=$email, phone=$phone, vat=$vat, type=$type, branchCode=$branchCode, role=$role, logoImage=$logoImage, authorized=$authorized, supplierDTOList=$supplierDTOList, storageDTOS=$storageDTOS]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.branchId != null) {
      json[r'branchId'] = this.branchId;
    } else {
      json[r'branchId'] = null;
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
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
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
    if (this.branchCode != null) {
      json[r'branchCode'] = this.branchCode;
    } else {
      json[r'branchCode'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
      json[r'logoImage'] = this.logoImage;
    if (this.authorized != null) {
      json[r'authorized'] = this.authorized;
    } else {
      json[r'authorized'] = null;
    }
      json[r'supplierDTOList'] = this.supplierDTOList;
      json[r'storageDTOS'] = this.storageDTOS;
    return json;
  }

  /// Returns a new [BranchResponseEntity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BranchResponseEntity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BranchResponseEntity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BranchResponseEntity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BranchResponseEntity(
        branchId: mapValueOfType<int>(json, r'branchId'),
        name: mapValueOfType<String>(json, r'name'),
        address: mapValueOfType<String>(json, r'address'),
        email: mapValueOfType<String>(json, r'email'),
        phone: mapValueOfType<String>(json, r'phone'),
        vat: mapValueOfType<String>(json, r'vat'),
        type: BranchResponseEntityTypeEnum.fromJson(json[r'type']),
        branchCode: mapValueOfType<String>(json, r'branchCode'),
        role: BranchResponseEntityRoleEnum.fromJson(json[r'role']),
        logoImage: json[r'logoImage'] is Iterable
            ? (json[r'logoImage'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        authorized: mapValueOfType<bool>(json, r'authorized'),
        supplierDTOList: SupplierDTO.listFromJson(json[r'supplierDTOList']),
        storageDTOS: StorageDTO.listFromJson(json[r'storageDTOS']),
      );
    }
    return null;
  }

  static List<BranchResponseEntity> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BranchResponseEntity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BranchResponseEntity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BranchResponseEntity> mapFromJson(dynamic json) {
    final map = <String, BranchResponseEntity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BranchResponseEntity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BranchResponseEntity-objects as value to a dart map
  static Map<String, List<BranchResponseEntity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BranchResponseEntity>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BranchResponseEntity.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class BranchResponseEntityTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const BranchResponseEntityTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RISTORANTE = BranchResponseEntityTypeEnum._(r'RISTORANTE');
  static const FORNITORE = BranchResponseEntityTypeEnum._(r'FORNITORE');
  static const CATERING = BranchResponseEntityTypeEnum._(r'CATERING');

  /// List of all possible values in this [enum][BranchResponseEntityTypeEnum].
  static const values = <BranchResponseEntityTypeEnum>[
    RISTORANTE,
    FORNITORE,
    CATERING,
  ];

  static BranchResponseEntityTypeEnum? fromJson(dynamic value) => BranchResponseEntityTypeEnumTypeTransformer().decode(value);

  static List<BranchResponseEntityTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BranchResponseEntityTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BranchResponseEntityTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BranchResponseEntityTypeEnum] to String,
/// and [decode] dynamic data back to [BranchResponseEntityTypeEnum].
class BranchResponseEntityTypeEnumTypeTransformer {
  factory BranchResponseEntityTypeEnumTypeTransformer() => _instance ??= const BranchResponseEntityTypeEnumTypeTransformer._();

  const BranchResponseEntityTypeEnumTypeTransformer._();

  String encode(BranchResponseEntityTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BranchResponseEntityTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BranchResponseEntityTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RISTORANTE': return BranchResponseEntityTypeEnum.RISTORANTE;
        case r'FORNITORE': return BranchResponseEntityTypeEnum.FORNITORE;
        case r'CATERING': return BranchResponseEntityTypeEnum.CATERING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BranchResponseEntityTypeEnumTypeTransformer] instance.
  static BranchResponseEntityTypeEnumTypeTransformer? _instance;
}



class BranchResponseEntityRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const BranchResponseEntityRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AMMINISTRATORE = BranchResponseEntityRoleEnum._(r'AMMINISTRATORE');
  static const RESPONSABILE = BranchResponseEntityRoleEnum._(r'RESPONSABILE');
  static const FACTOTUM = BranchResponseEntityRoleEnum._(r'FACTOTUM');
  static const RESPONSABILE_MAGAZZINO = BranchResponseEntityRoleEnum._(r'RESPONSABILE_MAGAZZINO');
  static const BARMAN = BranchResponseEntityRoleEnum._(r'BARMAN');
  static const CUOCO = BranchResponseEntityRoleEnum._(r'CUOCO');
  static const CAMERIERE = BranchResponseEntityRoleEnum._(r'CAMERIERE');

  /// List of all possible values in this [enum][BranchResponseEntityRoleEnum].
  static const values = <BranchResponseEntityRoleEnum>[
    AMMINISTRATORE,
    RESPONSABILE,
    FACTOTUM,
    RESPONSABILE_MAGAZZINO,
    BARMAN,
    CUOCO,
    CAMERIERE,
  ];

  static BranchResponseEntityRoleEnum? fromJson(dynamic value) => BranchResponseEntityRoleEnumTypeTransformer().decode(value);

  static List<BranchResponseEntityRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BranchResponseEntityRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BranchResponseEntityRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BranchResponseEntityRoleEnum] to String,
/// and [decode] dynamic data back to [BranchResponseEntityRoleEnum].
class BranchResponseEntityRoleEnumTypeTransformer {
  factory BranchResponseEntityRoleEnumTypeTransformer() => _instance ??= const BranchResponseEntityRoleEnumTypeTransformer._();

  const BranchResponseEntityRoleEnumTypeTransformer._();

  String encode(BranchResponseEntityRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BranchResponseEntityRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BranchResponseEntityRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AMMINISTRATORE': return BranchResponseEntityRoleEnum.AMMINISTRATORE;
        case r'RESPONSABILE': return BranchResponseEntityRoleEnum.RESPONSABILE;
        case r'FACTOTUM': return BranchResponseEntityRoleEnum.FACTOTUM;
        case r'RESPONSABILE_MAGAZZINO': return BranchResponseEntityRoleEnum.RESPONSABILE_MAGAZZINO;
        case r'BARMAN': return BranchResponseEntityRoleEnum.BARMAN;
        case r'CUOCO': return BranchResponseEntityRoleEnum.CUOCO;
        case r'CAMERIERE': return BranchResponseEntityRoleEnum.CAMERIERE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BranchResponseEntityRoleEnumTypeTransformer] instance.
  static BranchResponseEntityRoleEnumTypeTransformer? _instance;
}


