//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateOrderEntity {
  /// Returns a new [CreateOrderEntity] instance.
  CreateOrderEntity({
    this.userName,
    this.userCode,
    this.branchCode,
    this.insertedDate,
    this.incomingDate,
    this.preferredReceivingHour,
    this.orderTarget,
    this.branchCodeTarget,
    this.supplierCodeTarget,
    this.orderItemAmountMap = const {},
    this.thisOrderAlreadyInConsegnatoStatus,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userName;

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
  String? branchCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? insertedDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? incomingDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preferredReceivingHour;

  CreateOrderEntityOrderTargetEnum? orderTarget;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branchCodeTarget;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? supplierCodeTarget;

  Map<String, double> orderItemAmountMap;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? thisOrderAlreadyInConsegnatoStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateOrderEntity &&
    other.userName == userName &&
    other.userCode == userCode &&
    other.branchCode == branchCode &&
    other.insertedDate == insertedDate &&
    other.incomingDate == incomingDate &&
    other.preferredReceivingHour == preferredReceivingHour &&
    other.orderTarget == orderTarget &&
    other.branchCodeTarget == branchCodeTarget &&
    other.supplierCodeTarget == supplierCodeTarget &&
    _deepEquality.equals(other.orderItemAmountMap, orderItemAmountMap) &&
    other.thisOrderAlreadyInConsegnatoStatus == thisOrderAlreadyInConsegnatoStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userName == null ? 0 : userName!.hashCode) +
    (userCode == null ? 0 : userCode!.hashCode) +
    (branchCode == null ? 0 : branchCode!.hashCode) +
    (insertedDate == null ? 0 : insertedDate!.hashCode) +
    (incomingDate == null ? 0 : incomingDate!.hashCode) +
    (preferredReceivingHour == null ? 0 : preferredReceivingHour!.hashCode) +
    (orderTarget == null ? 0 : orderTarget!.hashCode) +
    (branchCodeTarget == null ? 0 : branchCodeTarget!.hashCode) +
    (supplierCodeTarget == null ? 0 : supplierCodeTarget!.hashCode) +
    (orderItemAmountMap.hashCode) +
    (thisOrderAlreadyInConsegnatoStatus == null ? 0 : thisOrderAlreadyInConsegnatoStatus!.hashCode);

  @override
  String toString() => 'CreateOrderEntity[userName=$userName, userCode=$userCode, branchCode=$branchCode, insertedDate=$insertedDate, incomingDate=$incomingDate, preferredReceivingHour=$preferredReceivingHour, orderTarget=$orderTarget, branchCodeTarget=$branchCodeTarget, supplierCodeTarget=$supplierCodeTarget, orderItemAmountMap=$orderItemAmountMap, thisOrderAlreadyInConsegnatoStatus=$thisOrderAlreadyInConsegnatoStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.userName != null) {
      json[r'userName'] = this.userName;
    } else {
      json[r'userName'] = null;
    }
    if (this.userCode != null) {
      json[r'userCode'] = this.userCode;
    } else {
      json[r'userCode'] = null;
    }
    if (this.branchCode != null) {
      json[r'branchCode'] = this.branchCode;
    } else {
      json[r'branchCode'] = null;
    }
    if (this.insertedDate != null) {
      json[r'insertedDate'] = this.insertedDate;
    } else {
      json[r'insertedDate'] = null;
    }
    if (this.incomingDate != null) {
      json[r'incomingDate'] = this.incomingDate;
    } else {
      json[r'incomingDate'] = null;
    }
    if (this.preferredReceivingHour != null) {
      json[r'preferredReceivingHour'] = this.preferredReceivingHour;
    } else {
      json[r'preferredReceivingHour'] = null;
    }
    if (this.orderTarget != null) {
      json[r'orderTarget'] = this.orderTarget;
    } else {
      json[r'orderTarget'] = null;
    }
    if (this.branchCodeTarget != null) {
      json[r'branchCodeTarget'] = this.branchCodeTarget;
    } else {
      json[r'branchCodeTarget'] = null;
    }
    if (this.supplierCodeTarget != null) {
      json[r'supplierCodeTarget'] = this.supplierCodeTarget;
    } else {
      json[r'supplierCodeTarget'] = null;
    }
      json[r'orderItemAmountMap'] = this.orderItemAmountMap;
    if (this.thisOrderAlreadyInConsegnatoStatus != null) {
      json[r'thisOrderAlreadyInConsegnatoStatus'] = this.thisOrderAlreadyInConsegnatoStatus;
    } else {
      json[r'thisOrderAlreadyInConsegnatoStatus'] = null;
    }
    return json;
  }

  /// Returns a new [CreateOrderEntity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateOrderEntity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateOrderEntity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateOrderEntity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateOrderEntity(
        userName: mapValueOfType<String>(json, r'userName'),
        userCode: mapValueOfType<String>(json, r'userCode'),
        branchCode: mapValueOfType<String>(json, r'branchCode'),
        insertedDate: mapValueOfType<String>(json, r'insertedDate'),
        incomingDate: mapValueOfType<String>(json, r'incomingDate'),
        preferredReceivingHour: mapValueOfType<String>(json, r'preferredReceivingHour'),
        orderTarget: CreateOrderEntityOrderTargetEnum.fromJson(json[r'orderTarget']),
        branchCodeTarget: mapValueOfType<String>(json, r'branchCodeTarget'),
        supplierCodeTarget: mapValueOfType<String>(json, r'supplierCodeTarget'),
        orderItemAmountMap: mapCastOfType<String, double>(json, r'orderItemAmountMap') ?? const {},
        thisOrderAlreadyInConsegnatoStatus: mapValueOfType<bool>(json, r'thisOrderAlreadyInConsegnatoStatus'),
      );
    }
    return null;
  }

  static List<CreateOrderEntity> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateOrderEntity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateOrderEntity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateOrderEntity> mapFromJson(dynamic json) {
    final map = <String, CreateOrderEntity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateOrderEntity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateOrderEntity-objects as value to a dart map
  static Map<String, List<CreateOrderEntity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateOrderEntity>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateOrderEntity.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class CreateOrderEntityOrderTargetEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateOrderEntityOrderTargetEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUPPLIER = CreateOrderEntityOrderTargetEnum._(r'SUPPLIER');
  static const BRANCH = CreateOrderEntityOrderTargetEnum._(r'BRANCH');

  /// List of all possible values in this [enum][CreateOrderEntityOrderTargetEnum].
  static const values = <CreateOrderEntityOrderTargetEnum>[
    SUPPLIER,
    BRANCH,
  ];

  static CreateOrderEntityOrderTargetEnum? fromJson(dynamic value) => CreateOrderEntityOrderTargetEnumTypeTransformer().decode(value);

  static List<CreateOrderEntityOrderTargetEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateOrderEntityOrderTargetEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateOrderEntityOrderTargetEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateOrderEntityOrderTargetEnum] to String,
/// and [decode] dynamic data back to [CreateOrderEntityOrderTargetEnum].
class CreateOrderEntityOrderTargetEnumTypeTransformer {
  factory CreateOrderEntityOrderTargetEnumTypeTransformer() => _instance ??= const CreateOrderEntityOrderTargetEnumTypeTransformer._();

  const CreateOrderEntityOrderTargetEnumTypeTransformer._();

  String encode(CreateOrderEntityOrderTargetEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateOrderEntityOrderTargetEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateOrderEntityOrderTargetEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUPPLIER': return CreateOrderEntityOrderTargetEnum.SUPPLIER;
        case r'BRANCH': return CreateOrderEntityOrderTargetEnum.BRANCH;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateOrderEntityOrderTargetEnumTypeTransformer] instance.
  static CreateOrderEntityOrderTargetEnumTypeTransformer? _instance;
}


