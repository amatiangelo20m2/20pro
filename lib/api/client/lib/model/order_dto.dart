//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderDTO {
  /// Returns a new [OrderDTO] instance.
  OrderDTO({
    this.orderId,
    this.createdByUser,
    this.userCode,
    this.createdBranchCode,
    this.createdBranchName,
    this.insertedDate,
    this.incomingDate,
    this.preferredReceivingTime,
    this.orderStatus,
    this.orderTarget,
    this.codeTarget,
    this.nameTarget,
    this.orderItemDtoList = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orderId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdByUser;

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
  String? createdBranchCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdBranchName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? insertedDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? incomingDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LocalTime? preferredReceivingTime;

  OrderDTOOrderStatusEnum? orderStatus;

  OrderDTOOrderTargetEnum? orderTarget;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codeTarget;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nameTarget;

  Set<OrderItemDto> orderItemDtoList;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderDTO &&
    other.orderId == orderId &&
    other.createdByUser == createdByUser &&
    other.userCode == userCode &&
    other.createdBranchCode == createdBranchCode &&
    other.createdBranchName == createdBranchName &&
    other.insertedDate == insertedDate &&
    other.incomingDate == incomingDate &&
    other.preferredReceivingTime == preferredReceivingTime &&
    other.orderStatus == orderStatus &&
    other.orderTarget == orderTarget &&
    other.codeTarget == codeTarget &&
    other.nameTarget == nameTarget &&
    _deepEquality.equals(other.orderItemDtoList, orderItemDtoList);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderId == null ? 0 : orderId!.hashCode) +
    (createdByUser == null ? 0 : createdByUser!.hashCode) +
    (userCode == null ? 0 : userCode!.hashCode) +
    (createdBranchCode == null ? 0 : createdBranchCode!.hashCode) +
    (createdBranchName == null ? 0 : createdBranchName!.hashCode) +
    (insertedDate == null ? 0 : insertedDate!.hashCode) +
    (incomingDate == null ? 0 : incomingDate!.hashCode) +
    (preferredReceivingTime == null ? 0 : preferredReceivingTime!.hashCode) +
    (orderStatus == null ? 0 : orderStatus!.hashCode) +
    (orderTarget == null ? 0 : orderTarget!.hashCode) +
    (codeTarget == null ? 0 : codeTarget!.hashCode) +
    (nameTarget == null ? 0 : nameTarget!.hashCode) +
    (orderItemDtoList.hashCode);

  @override
  String toString() => 'OrderDTO[orderId=$orderId, createdByUser=$createdByUser, userCode=$userCode, createdBranchCode=$createdBranchCode, createdBranchName=$createdBranchName, insertedDate=$insertedDate, incomingDate=$incomingDate, preferredReceivingTime=$preferredReceivingTime, orderStatus=$orderStatus, orderTarget=$orderTarget, codeTarget=$codeTarget, nameTarget=$nameTarget, orderItemDtoList=$orderItemDtoList]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.orderId != null) {
      json[r'orderId'] = this.orderId;
    } else {
      json[r'orderId'] = null;
    }
    if (this.createdByUser != null) {
      json[r'createdByUser'] = this.createdByUser;
    } else {
      json[r'createdByUser'] = null;
    }
    if (this.userCode != null) {
      json[r'userCode'] = this.userCode;
    } else {
      json[r'userCode'] = null;
    }
    if (this.createdBranchCode != null) {
      json[r'createdBranchCode'] = this.createdBranchCode;
    } else {
      json[r'createdBranchCode'] = null;
    }
    if (this.createdBranchName != null) {
      json[r'createdBranchName'] = this.createdBranchName;
    } else {
      json[r'createdBranchName'] = null;
    }
    if (this.insertedDate != null) {
      json[r'insertedDate'] = _dateFormatter.format(this.insertedDate!.toUtc());
    } else {
      json[r'insertedDate'] = null;
    }
    if (this.incomingDate != null) {
      json[r'incomingDate'] = _dateFormatter.format(this.incomingDate!.toUtc());
    } else {
      json[r'incomingDate'] = null;
    }
    if (this.preferredReceivingTime != null) {
      json[r'preferredReceivingTime'] = this.preferredReceivingTime;
    } else {
      json[r'preferredReceivingTime'] = null;
    }
    if (this.orderStatus != null) {
      json[r'orderStatus'] = this.orderStatus;
    } else {
      json[r'orderStatus'] = null;
    }
    if (this.orderTarget != null) {
      json[r'orderTarget'] = this.orderTarget;
    } else {
      json[r'orderTarget'] = null;
    }
    if (this.codeTarget != null) {
      json[r'codeTarget'] = this.codeTarget;
    } else {
      json[r'codeTarget'] = null;
    }
    if (this.nameTarget != null) {
      json[r'nameTarget'] = this.nameTarget;
    } else {
      json[r'nameTarget'] = null;
    }
      json[r'orderItemDtoList'] = this.orderItemDtoList.toList(growable: false);
    return json;
  }

  /// Returns a new [OrderDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderDTO(
        orderId: mapValueOfType<int>(json, r'orderId'),
        createdByUser: mapValueOfType<String>(json, r'createdByUser'),
        userCode: mapValueOfType<String>(json, r'userCode'),
        createdBranchCode: mapValueOfType<String>(json, r'createdBranchCode'),
        createdBranchName: mapValueOfType<String>(json, r'createdBranchName'),
        insertedDate: mapDateTime(json, r'insertedDate', r''),
        incomingDate: mapDateTime(json, r'incomingDate', r''),
        preferredReceivingTime: LocalTime.fromJson(json[r'preferredReceivingTime']),
        orderStatus: OrderDTOOrderStatusEnum.fromJson(json[r'orderStatus']),
        orderTarget: OrderDTOOrderTargetEnum.fromJson(json[r'orderTarget']),
        codeTarget: mapValueOfType<String>(json, r'codeTarget'),
        nameTarget: mapValueOfType<String>(json, r'nameTarget'),
        orderItemDtoList: OrderItemDto.listFromJson(json[r'orderItemDtoList']).toSet(),
      );
    }
    return null;
  }

  static List<OrderDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderDTO> mapFromJson(dynamic json) {
    final map = <String, OrderDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderDTO-objects as value to a dart map
  static Map<String, List<OrderDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class OrderDTOOrderStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderDTOOrderStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const BOZZA = OrderDTOOrderStatusEnum._(r'BOZZA');
  static const INVIATO = OrderDTOOrderStatusEnum._(r'INVIATO');
  static const IN_LAVORAZIONE = OrderDTOOrderStatusEnum._(r'IN_LAVORAZIONE');
  static const PRONTO_A_PARTIRE = OrderDTOOrderStatusEnum._(r'PRONTO_A_PARTIRE');
  static const DA_CONFERMARE = OrderDTOOrderStatusEnum._(r'DA_CONFERMARE');
  static const CONSEGNATO = OrderDTOOrderStatusEnum._(r'CONSEGNATO');
  static const ARCHIVIATO = OrderDTOOrderStatusEnum._(r'ARCHIVIATO');
  static const CANCELLATO = OrderDTOOrderStatusEnum._(r'CANCELLATO');

  /// List of all possible values in this [enum][OrderDTOOrderStatusEnum].
  static const values = <OrderDTOOrderStatusEnum>[
    BOZZA,
    INVIATO,
    IN_LAVORAZIONE,
    PRONTO_A_PARTIRE,
    DA_CONFERMARE,
    CONSEGNATO,
    ARCHIVIATO,
    CANCELLATO,
  ];

  static OrderDTOOrderStatusEnum? fromJson(dynamic value) => OrderDTOOrderStatusEnumTypeTransformer().decode(value);

  static List<OrderDTOOrderStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderDTOOrderStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderDTOOrderStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrderDTOOrderStatusEnum] to String,
/// and [decode] dynamic data back to [OrderDTOOrderStatusEnum].
class OrderDTOOrderStatusEnumTypeTransformer {
  factory OrderDTOOrderStatusEnumTypeTransformer() => _instance ??= const OrderDTOOrderStatusEnumTypeTransformer._();

  const OrderDTOOrderStatusEnumTypeTransformer._();

  String encode(OrderDTOOrderStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderDTOOrderStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderDTOOrderStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'BOZZA': return OrderDTOOrderStatusEnum.BOZZA;
        case r'INVIATO': return OrderDTOOrderStatusEnum.INVIATO;
        case r'IN_LAVORAZIONE': return OrderDTOOrderStatusEnum.IN_LAVORAZIONE;
        case r'PRONTO_A_PARTIRE': return OrderDTOOrderStatusEnum.PRONTO_A_PARTIRE;
        case r'DA_CONFERMARE': return OrderDTOOrderStatusEnum.DA_CONFERMARE;
        case r'CONSEGNATO': return OrderDTOOrderStatusEnum.CONSEGNATO;
        case r'ARCHIVIATO': return OrderDTOOrderStatusEnum.ARCHIVIATO;
        case r'CANCELLATO': return OrderDTOOrderStatusEnum.CANCELLATO;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderDTOOrderStatusEnumTypeTransformer] instance.
  static OrderDTOOrderStatusEnumTypeTransformer? _instance;
}



class OrderDTOOrderTargetEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderDTOOrderTargetEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUPPLIER = OrderDTOOrderTargetEnum._(r'SUPPLIER');
  static const BRANCH = OrderDTOOrderTargetEnum._(r'BRANCH');

  /// List of all possible values in this [enum][OrderDTOOrderTargetEnum].
  static const values = <OrderDTOOrderTargetEnum>[
    SUPPLIER,
    BRANCH,
  ];

  static OrderDTOOrderTargetEnum? fromJson(dynamic value) => OrderDTOOrderTargetEnumTypeTransformer().decode(value);

  static List<OrderDTOOrderTargetEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderDTOOrderTargetEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderDTOOrderTargetEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrderDTOOrderTargetEnum] to String,
/// and [decode] dynamic data back to [OrderDTOOrderTargetEnum].
class OrderDTOOrderTargetEnumTypeTransformer {
  factory OrderDTOOrderTargetEnumTypeTransformer() => _instance ??= const OrderDTOOrderTargetEnumTypeTransformer._();

  const OrderDTOOrderTargetEnumTypeTransformer._();

  String encode(OrderDTOOrderTargetEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderDTOOrderTargetEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderDTOOrderTargetEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUPPLIER': return OrderDTOOrderTargetEnum.SUPPLIER;
        case r'BRANCH': return OrderDTOOrderTargetEnum.BRANCH;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderDTOOrderTargetEnumTypeTransformer] instance.
  static OrderDTOOrderTargetEnumTypeTransformer? _instance;
}


