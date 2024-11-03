//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InventoryAction {
  /// Returns a new [InventoryAction] instance.
  InventoryAction({
    this.insertionDate,
    this.amount,
    this.operationType,
    this.modifiedByUser,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? insertionDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? amount;

  InventoryActionOperationTypeEnum? operationType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? modifiedByUser;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InventoryAction &&
    other.insertionDate == insertionDate &&
    other.amount == amount &&
    other.operationType == operationType &&
    other.modifiedByUser == modifiedByUser;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (insertionDate == null ? 0 : insertionDate!.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (operationType == null ? 0 : operationType!.hashCode) +
    (modifiedByUser == null ? 0 : modifiedByUser!.hashCode);

  @override
  String toString() => 'InventoryAction[insertionDate=$insertionDate, amount=$amount, operationType=$operationType, modifiedByUser=$modifiedByUser]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.insertionDate != null) {
      json[r'insertionDate'] = _dateFormatter.format(this.insertionDate!.toUtc());
    } else {
      json[r'insertionDate'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.operationType != null) {
      json[r'operationType'] = this.operationType;
    } else {
      json[r'operationType'] = null;
    }
    if (this.modifiedByUser != null) {
      json[r'modifiedByUser'] = this.modifiedByUser;
    } else {
      json[r'modifiedByUser'] = null;
    }
    return json;
  }

  /// Returns a new [InventoryAction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InventoryAction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InventoryAction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InventoryAction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InventoryAction(
        insertionDate: mapDateTime(json, r'insertionDate', r''),
        amount: mapValueOfType<double>(json, r'amount'),
        operationType: InventoryActionOperationTypeEnum.fromJson(json[r'operationType']),
        modifiedByUser: mapValueOfType<String>(json, r'modifiedByUser'),
      );
    }
    return null;
  }

  static List<InventoryAction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InventoryAction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InventoryAction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InventoryAction> mapFromJson(dynamic json) {
    final map = <String, InventoryAction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InventoryAction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InventoryAction-objects as value to a dart map
  static Map<String, List<InventoryAction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InventoryAction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InventoryAction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class InventoryActionOperationTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const InventoryActionOperationTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CREATION = InventoryActionOperationTypeEnum._(r'CREATION');
  static const INSERTION = InventoryActionOperationTypeEnum._(r'INSERTION');
  static const REMOVAL = InventoryActionOperationTypeEnum._(r'REMOVAL');

  /// List of all possible values in this [enum][InventoryActionOperationTypeEnum].
  static const values = <InventoryActionOperationTypeEnum>[
    CREATION,
    INSERTION,
    REMOVAL,
  ];

  static InventoryActionOperationTypeEnum? fromJson(dynamic value) => InventoryActionOperationTypeEnumTypeTransformer().decode(value);

  static List<InventoryActionOperationTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InventoryActionOperationTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InventoryActionOperationTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InventoryActionOperationTypeEnum] to String,
/// and [decode] dynamic data back to [InventoryActionOperationTypeEnum].
class InventoryActionOperationTypeEnumTypeTransformer {
  factory InventoryActionOperationTypeEnumTypeTransformer() => _instance ??= const InventoryActionOperationTypeEnumTypeTransformer._();

  const InventoryActionOperationTypeEnumTypeTransformer._();

  String encode(InventoryActionOperationTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InventoryActionOperationTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InventoryActionOperationTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CREATION': return InventoryActionOperationTypeEnum.CREATION;
        case r'INSERTION': return InventoryActionOperationTypeEnum.INSERTION;
        case r'REMOVAL': return InventoryActionOperationTypeEnum.REMOVAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InventoryActionOperationTypeEnumTypeTransformer] instance.
  static InventoryActionOperationTypeEnumTypeTransformer? _instance;
}


