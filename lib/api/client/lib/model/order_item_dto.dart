//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderItemDto {
  /// Returns a new [OrderItemDto] instance.
  OrderItemDto({
    this.productId,
    this.productName,
    this.quantity,
    this.receivedQuantity,
    this.sentQuantity,
    this.unitMeasure,
    this.price,
    this.vatPrice,
    this.vat,
    this.doneBySupplier,
    this.received,
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

  OrderItemDtoUnitMeasureEnum? unitMeasure;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? doneBySupplier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? received;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderItemDto &&
    other.productId == productId &&
    other.productName == productName &&
    other.quantity == quantity &&
    other.receivedQuantity == receivedQuantity &&
    other.sentQuantity == sentQuantity &&
    other.unitMeasure == unitMeasure &&
    other.price == price &&
    other.vatPrice == vatPrice &&
    other.vat == vat &&
    other.doneBySupplier == doneBySupplier &&
    other.received == received;

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
    (vat == null ? 0 : vat!.hashCode) +
    (doneBySupplier == null ? 0 : doneBySupplier!.hashCode) +
    (received == null ? 0 : received!.hashCode);

  @override
  String toString() => 'OrderItemDto[productId=$productId, productName=$productName, quantity=$quantity, receivedQuantity=$receivedQuantity, sentQuantity=$sentQuantity, unitMeasure=$unitMeasure, price=$price, vatPrice=$vatPrice, vat=$vat, doneBySupplier=$doneBySupplier, received=$received]';

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
    if (this.doneBySupplier != null) {
      json[r'doneBySupplier'] = this.doneBySupplier;
    } else {
      json[r'doneBySupplier'] = null;
    }
    if (this.received != null) {
      json[r'received'] = this.received;
    } else {
      json[r'received'] = null;
    }
    return json;
  }

  /// Returns a new [OrderItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderItemDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderItemDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderItemDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderItemDto(
        productId: mapValueOfType<int>(json, r'productId'),
        productName: mapValueOfType<String>(json, r'productName'),
        quantity: mapValueOfType<double>(json, r'quantity'),
        receivedQuantity: mapValueOfType<double>(json, r'receivedQuantity'),
        sentQuantity: mapValueOfType<double>(json, r'sentQuantity'),
        unitMeasure: OrderItemDtoUnitMeasureEnum.fromJson(json[r'unitMeasure']),
        price: mapValueOfType<double>(json, r'price'),
        vatPrice: mapValueOfType<double>(json, r'vatPrice'),
        vat: mapValueOfType<int>(json, r'vat'),
        doneBySupplier: mapValueOfType<bool>(json, r'doneBySupplier'),
        received: mapValueOfType<bool>(json, r'received'),
      );
    }
    return null;
  }

  static List<OrderItemDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderItemDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderItemDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderItemDto> mapFromJson(dynamic json) {
    final map = <String, OrderItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderItemDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderItemDto-objects as value to a dart map
  static Map<String, List<OrderItemDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderItemDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class OrderItemDtoUnitMeasureEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderItemDtoUnitMeasureEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const KG = OrderItemDtoUnitMeasureEnum._(r'KG');
  static const PEZZI = OrderItemDtoUnitMeasureEnum._(r'PEZZI');
  static const LITRI = OrderItemDtoUnitMeasureEnum._(r'LITRI');
  static const PACCHI = OrderItemDtoUnitMeasureEnum._(r'PACCHI');
  static const BARATTOLIPICCOLI = OrderItemDtoUnitMeasureEnum._(r'BARATTOLIPICCOLI');
  static const CARTONI = OrderItemDtoUnitMeasureEnum._(r'CARTONI');
  static const cARTONE6 = OrderItemDtoUnitMeasureEnum._(r'CARTONE6');
  static const cARTONE12 = OrderItemDtoUnitMeasureEnum._(r'CARTONE12');
  static const cARTONE24 = OrderItemDtoUnitMeasureEnum._(r'CARTONE24');
  static const cARTONE50 = OrderItemDtoUnitMeasureEnum._(r'CARTONE50');
  static const BOTTIGLIA = OrderItemDtoUnitMeasureEnum._(r'BOTTIGLIA');
  static const BARATTOLI = OrderItemDtoUnitMeasureEnum._(r'BARATTOLI');
  static const FARDELLO = OrderItemDtoUnitMeasureEnum._(r'FARDELLO');
  static const CT = OrderItemDtoUnitMeasureEnum._(r'CT');
  static const BOTTIGLIETTA = OrderItemDtoUnitMeasureEnum._(r'BOTTIGLIETTA');
  static const UNITA = OrderItemDtoUnitMeasureEnum._(r'UNITA');
  static const SECCHIO = OrderItemDtoUnitMeasureEnum._(r'SECCHIO');
  static const ALTRO = OrderItemDtoUnitMeasureEnum._(r'ALTRO');
  static const COLLO = OrderItemDtoUnitMeasureEnum._(r'COLLO');

  /// List of all possible values in this [enum][OrderItemDtoUnitMeasureEnum].
  static const values = <OrderItemDtoUnitMeasureEnum>[
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

  static OrderItemDtoUnitMeasureEnum? fromJson(dynamic value) => OrderItemDtoUnitMeasureEnumTypeTransformer().decode(value);

  static List<OrderItemDtoUnitMeasureEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderItemDtoUnitMeasureEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderItemDtoUnitMeasureEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrderItemDtoUnitMeasureEnum] to String,
/// and [decode] dynamic data back to [OrderItemDtoUnitMeasureEnum].
class OrderItemDtoUnitMeasureEnumTypeTransformer {
  factory OrderItemDtoUnitMeasureEnumTypeTransformer() => _instance ??= const OrderItemDtoUnitMeasureEnumTypeTransformer._();

  const OrderItemDtoUnitMeasureEnumTypeTransformer._();

  String encode(OrderItemDtoUnitMeasureEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderItemDtoUnitMeasureEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderItemDtoUnitMeasureEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'KG': return OrderItemDtoUnitMeasureEnum.KG;
        case r'PEZZI': return OrderItemDtoUnitMeasureEnum.PEZZI;
        case r'LITRI': return OrderItemDtoUnitMeasureEnum.LITRI;
        case r'PACCHI': return OrderItemDtoUnitMeasureEnum.PACCHI;
        case r'BARATTOLIPICCOLI': return OrderItemDtoUnitMeasureEnum.BARATTOLIPICCOLI;
        case r'CARTONI': return OrderItemDtoUnitMeasureEnum.CARTONI;
        case r'CARTONE6': return OrderItemDtoUnitMeasureEnum.cARTONE6;
        case r'CARTONE12': return OrderItemDtoUnitMeasureEnum.cARTONE12;
        case r'CARTONE24': return OrderItemDtoUnitMeasureEnum.cARTONE24;
        case r'CARTONE50': return OrderItemDtoUnitMeasureEnum.cARTONE50;
        case r'BOTTIGLIA': return OrderItemDtoUnitMeasureEnum.BOTTIGLIA;
        case r'BARATTOLI': return OrderItemDtoUnitMeasureEnum.BARATTOLI;
        case r'FARDELLO': return OrderItemDtoUnitMeasureEnum.FARDELLO;
        case r'CT': return OrderItemDtoUnitMeasureEnum.CT;
        case r'BOTTIGLIETTA': return OrderItemDtoUnitMeasureEnum.BOTTIGLIETTA;
        case r'UNITA': return OrderItemDtoUnitMeasureEnum.UNITA;
        case r'SECCHIO': return OrderItemDtoUnitMeasureEnum.SECCHIO;
        case r'ALTRO': return OrderItemDtoUnitMeasureEnum.ALTRO;
        case r'COLLO': return OrderItemDtoUnitMeasureEnum.COLLO;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderItemDtoUnitMeasureEnumTypeTransformer] instance.
  static OrderItemDtoUnitMeasureEnumTypeTransformer? _instance;
}


