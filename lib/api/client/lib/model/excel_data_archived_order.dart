//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExcelDataArchivedOrder {
  /// Returns a new [ExcelDataArchivedOrder] instance.
  ExcelDataArchivedOrder({
    this.productId,
    this.productName,
    this.quantity,
    this.receivedQuantity,
    this.sentQuantity,
    this.unitMeasure,
    this.price,
    this.vatPrice,
    this.vat,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? productId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? quantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? receivedQuantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? sentQuantity;

  ExcelDataArchivedOrderUnitMeasureEnum? unitMeasure;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? vatPrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vat;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExcelDataArchivedOrder &&
    other.productId == productId &&
    other.productName == productName &&
    other.quantity == quantity &&
    other.receivedQuantity == receivedQuantity &&
    other.sentQuantity == sentQuantity &&
    other.unitMeasure == unitMeasure &&
    other.price == price &&
    other.vatPrice == vatPrice &&
    other.vat == vat;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (productId == null ? 0 : productId!.hashCode) +
    (productName == null ? 0 : productName!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (receivedQuantity == null ? 0 : receivedQuantity!.hashCode) +
    (sentQuantity == null ? 0 : sentQuantity!.hashCode) +
    (unitMeasure == null ? 0 : unitMeasure!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (vatPrice == null ? 0 : vatPrice!.hashCode) +
    (vat == null ? 0 : vat!.hashCode);

  @override
  String toString() => 'ExcelDataArchivedOrder[productId=$productId, productName=$productName, quantity=$quantity, receivedQuantity=$receivedQuantity, sentQuantity=$sentQuantity, unitMeasure=$unitMeasure, price=$price, vatPrice=$vatPrice, vat=$vat]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.productId != null) {
      json[r'productId'] = this.productId;
    } else {
      json[r'productId'] = null;
    }
    if (this.productName != null) {
      json[r'productName'] = this.productName;
    } else {
      json[r'productName'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    if (this.receivedQuantity != null) {
      json[r'receivedQuantity'] = this.receivedQuantity;
    } else {
      json[r'receivedQuantity'] = null;
    }
    if (this.sentQuantity != null) {
      json[r'sentQuantity'] = this.sentQuantity;
    } else {
      json[r'sentQuantity'] = null;
    }
    if (this.unitMeasure != null) {
      json[r'unitMeasure'] = this.unitMeasure;
    } else {
      json[r'unitMeasure'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.vatPrice != null) {
      json[r'vatPrice'] = this.vatPrice;
    } else {
      json[r'vatPrice'] = null;
    }
    if (this.vat != null) {
      json[r'vat'] = this.vat;
    } else {
      json[r'vat'] = null;
    }
    return json;
  }

  /// Returns a new [ExcelDataArchivedOrder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExcelDataArchivedOrder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExcelDataArchivedOrder[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExcelDataArchivedOrder[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExcelDataArchivedOrder(
        productId: mapValueOfType<int>(json, r'productId'),
        productName: mapValueOfType<String>(json, r'productName'),
        quantity: mapValueOfType<double>(json, r'quantity'),
        receivedQuantity: mapValueOfType<double>(json, r'receivedQuantity'),
        sentQuantity: mapValueOfType<double>(json, r'sentQuantity'),
        unitMeasure: ExcelDataArchivedOrderUnitMeasureEnum.fromJson(json[r'unitMeasure']),
        price: mapValueOfType<double>(json, r'price'),
        vatPrice: mapValueOfType<double>(json, r'vatPrice'),
        vat: mapValueOfType<int>(json, r'vat'),
      );
    }
    return null;
  }

  static List<ExcelDataArchivedOrder> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExcelDataArchivedOrder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExcelDataArchivedOrder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExcelDataArchivedOrder> mapFromJson(dynamic json) {
    final map = <String, ExcelDataArchivedOrder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExcelDataArchivedOrder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExcelDataArchivedOrder-objects as value to a dart map
  static Map<String, List<ExcelDataArchivedOrder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExcelDataArchivedOrder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExcelDataArchivedOrder.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ExcelDataArchivedOrderUnitMeasureEnum {
  /// Instantiate a new enum with the provided [value].
  const ExcelDataArchivedOrderUnitMeasureEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const KG = ExcelDataArchivedOrderUnitMeasureEnum._(r'KG');
  static const PEZZI = ExcelDataArchivedOrderUnitMeasureEnum._(r'PEZZI');
  static const LITRI = ExcelDataArchivedOrderUnitMeasureEnum._(r'LITRI');
  static const PACCHI = ExcelDataArchivedOrderUnitMeasureEnum._(r'PACCHI');
  static const BARATTOLIPICCOLI = ExcelDataArchivedOrderUnitMeasureEnum._(r'BARATTOLIPICCOLI');
  static const CARTONI = ExcelDataArchivedOrderUnitMeasureEnum._(r'CARTONI');
  static const cARTONE6 = ExcelDataArchivedOrderUnitMeasureEnum._(r'CARTONE6');
  static const cARTONE12 = ExcelDataArchivedOrderUnitMeasureEnum._(r'CARTONE12');
  static const cARTONE24 = ExcelDataArchivedOrderUnitMeasureEnum._(r'CARTONE24');
  static const cARTONE50 = ExcelDataArchivedOrderUnitMeasureEnum._(r'CARTONE50');
  static const BOTTIGLIA = ExcelDataArchivedOrderUnitMeasureEnum._(r'BOTTIGLIA');
  static const BARATTOLI = ExcelDataArchivedOrderUnitMeasureEnum._(r'BARATTOLI');
  static const FARDELLO = ExcelDataArchivedOrderUnitMeasureEnum._(r'FARDELLO');
  static const CT = ExcelDataArchivedOrderUnitMeasureEnum._(r'CT');
  static const BOTTIGLIETTA = ExcelDataArchivedOrderUnitMeasureEnum._(r'BOTTIGLIETTA');
  static const UNITA = ExcelDataArchivedOrderUnitMeasureEnum._(r'UNITA');
  static const SECCHIO = ExcelDataArchivedOrderUnitMeasureEnum._(r'SECCHIO');
  static const ALTRO = ExcelDataArchivedOrderUnitMeasureEnum._(r'ALTRO');
  static const COLLO = ExcelDataArchivedOrderUnitMeasureEnum._(r'COLLO');

  /// List of all possible values in this [enum][ExcelDataArchivedOrderUnitMeasureEnum].
  static const values = <ExcelDataArchivedOrderUnitMeasureEnum>[
    KG,
    PEZZI,
    LITRI,
    PACCHI,
    BARATTOLIPICCOLI,
    CARTONI,
    cARTONE6,
    cARTONE12,
    cARTONE24,
    cARTONE50,
    BOTTIGLIA,
    BARATTOLI,
    FARDELLO,
    CT,
    BOTTIGLIETTA,
    UNITA,
    SECCHIO,
    ALTRO,
    COLLO,
  ];

  static ExcelDataArchivedOrderUnitMeasureEnum? fromJson(dynamic value) => ExcelDataArchivedOrderUnitMeasureEnumTypeTransformer().decode(value);

  static List<ExcelDataArchivedOrderUnitMeasureEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExcelDataArchivedOrderUnitMeasureEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExcelDataArchivedOrderUnitMeasureEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExcelDataArchivedOrderUnitMeasureEnum] to String,
/// and [decode] dynamic data back to [ExcelDataArchivedOrderUnitMeasureEnum].
class ExcelDataArchivedOrderUnitMeasureEnumTypeTransformer {
  factory ExcelDataArchivedOrderUnitMeasureEnumTypeTransformer() => _instance ??= const ExcelDataArchivedOrderUnitMeasureEnumTypeTransformer._();

  const ExcelDataArchivedOrderUnitMeasureEnumTypeTransformer._();

  String encode(ExcelDataArchivedOrderUnitMeasureEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExcelDataArchivedOrderUnitMeasureEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExcelDataArchivedOrderUnitMeasureEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'KG': return ExcelDataArchivedOrderUnitMeasureEnum.KG;
        case r'PEZZI': return ExcelDataArchivedOrderUnitMeasureEnum.PEZZI;
        case r'LITRI': return ExcelDataArchivedOrderUnitMeasureEnum.LITRI;
        case r'PACCHI': return ExcelDataArchivedOrderUnitMeasureEnum.PACCHI;
        case r'BARATTOLIPICCOLI': return ExcelDataArchivedOrderUnitMeasureEnum.BARATTOLIPICCOLI;
        case r'CARTONI': return ExcelDataArchivedOrderUnitMeasureEnum.CARTONI;
        case r'CARTONE6': return ExcelDataArchivedOrderUnitMeasureEnum.cARTONE6;
        case r'CARTONE12': return ExcelDataArchivedOrderUnitMeasureEnum.cARTONE12;
        case r'CARTONE24': return ExcelDataArchivedOrderUnitMeasureEnum.cARTONE24;
        case r'CARTONE50': return ExcelDataArchivedOrderUnitMeasureEnum.cARTONE50;
        case r'BOTTIGLIA': return ExcelDataArchivedOrderUnitMeasureEnum.BOTTIGLIA;
        case r'BARATTOLI': return ExcelDataArchivedOrderUnitMeasureEnum.BARATTOLI;
        case r'FARDELLO': return ExcelDataArchivedOrderUnitMeasureEnum.FARDELLO;
        case r'CT': return ExcelDataArchivedOrderUnitMeasureEnum.CT;
        case r'BOTTIGLIETTA': return ExcelDataArchivedOrderUnitMeasureEnum.BOTTIGLIETTA;
        case r'UNITA': return ExcelDataArchivedOrderUnitMeasureEnum.UNITA;
        case r'SECCHIO': return ExcelDataArchivedOrderUnitMeasureEnum.SECCHIO;
        case r'ALTRO': return ExcelDataArchivedOrderUnitMeasureEnum.ALTRO;
        case r'COLLO': return ExcelDataArchivedOrderUnitMeasureEnum.COLLO;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExcelDataArchivedOrderUnitMeasureEnumTypeTransformer] instance.
  static ExcelDataArchivedOrderUnitMeasureEnumTypeTransformer? _instance;
}


