//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProductDTO {
  /// Returns a new [ProductDTO] instance.
  ProductDTO({
    this.productId,
    this.name,
    this.productCode,
    this.unitMeasure,
    this.description,
    this.vatApplied,
    this.price,
    this.vatPrice,
    this.category,
    this.sku,
    this.available,
    this.deleted,
    this.branchListNotAllowedToSeeThisProduct = const [],
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
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productCode;

  ProductDTOUnitMeasureEnum? unitMeasure;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vatApplied;

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

  ProductDTOCategoryEnum? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sku;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deleted;

  List<String> branchListNotAllowedToSeeThisProduct;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductDTO &&
    other.productId == productId &&
    other.name == name &&
    other.productCode == productCode &&
    other.unitMeasure == unitMeasure &&
    other.description == description &&
    other.vatApplied == vatApplied &&
    other.price == price &&
    other.vatPrice == vatPrice &&
    other.category == category &&
    other.sku == sku &&
    other.available == available &&
    other.deleted == deleted &&
    _deepEquality.equals(other.branchListNotAllowedToSeeThisProduct, branchListNotAllowedToSeeThisProduct);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (productId == null ? 0 : productId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (productCode == null ? 0 : productCode!.hashCode) +
    (unitMeasure == null ? 0 : unitMeasure!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (vatApplied == null ? 0 : vatApplied!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (vatPrice == null ? 0 : vatPrice!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (sku == null ? 0 : sku!.hashCode) +
    (available == null ? 0 : available!.hashCode) +
    (deleted == null ? 0 : deleted!.hashCode) +
    (branchListNotAllowedToSeeThisProduct.hashCode);

  @override
  String toString() => 'ProductDTO[productId=$productId, name=$name, productCode=$productCode, unitMeasure=$unitMeasure, description=$description, vatApplied=$vatApplied, price=$price, vatPrice=$vatPrice, category=$category, sku=$sku, available=$available, deleted=$deleted, branchListNotAllowedToSeeThisProduct=$branchListNotAllowedToSeeThisProduct]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.productId != null) {
      json[r'productId'] = this.productId;
    } else {
      json[r'productId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.productCode != null) {
      json[r'productCode'] = this.productCode;
    } else {
      json[r'productCode'] = null;
    }
    if (this.unitMeasure != null) {
      json[r'unitMeasure'] = this.unitMeasure;
    } else {
      json[r'unitMeasure'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.vatApplied != null) {
      json[r'vatApplied'] = this.vatApplied;
    } else {
      json[r'vatApplied'] = null;
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
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.sku != null) {
      json[r'sku'] = this.sku;
    } else {
      json[r'sku'] = null;
    }
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.deleted != null) {
      json[r'deleted'] = this.deleted;
    } else {
      json[r'deleted'] = null;
    }
      json[r'branchListNotAllowedToSeeThisProduct'] = this.branchListNotAllowedToSeeThisProduct;
    return json;
  }

  /// Returns a new [ProductDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductDTO(
        productId: mapValueOfType<int>(json, r'productId'),
        name: mapValueOfType<String>(json, r'name'),
        productCode: mapValueOfType<String>(json, r'productCode'),
        unitMeasure: ProductDTOUnitMeasureEnum.fromJson(json[r'unitMeasure']),
        description: mapValueOfType<String>(json, r'description'),
        vatApplied: mapValueOfType<int>(json, r'vatApplied'),
        price: mapValueOfType<double>(json, r'price'),
        vatPrice: mapValueOfType<double>(json, r'vatPrice'),
        category: ProductDTOCategoryEnum.fromJson(json[r'category']),
        sku: mapValueOfType<String>(json, r'sku'),
        available: mapValueOfType<bool>(json, r'available'),
        deleted: mapValueOfType<bool>(json, r'deleted'),
        branchListNotAllowedToSeeThisProduct: json[r'branchListNotAllowedToSeeThisProduct'] is Iterable
            ? (json[r'branchListNotAllowedToSeeThisProduct'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ProductDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductDTO> mapFromJson(dynamic json) {
    final map = <String, ProductDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductDTO-objects as value to a dart map
  static Map<String, List<ProductDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ProductDTOUnitMeasureEnum {
  /// Instantiate a new enum with the provided [value].
  const ProductDTOUnitMeasureEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const KG = ProductDTOUnitMeasureEnum._(r'KG');
  static const PEZZI = ProductDTOUnitMeasureEnum._(r'PEZZI');
  static const LITRI = ProductDTOUnitMeasureEnum._(r'LITRI');
  static const PACCHI = ProductDTOUnitMeasureEnum._(r'PACCHI');
  static const BARATTOLIPICCOLI = ProductDTOUnitMeasureEnum._(r'BARATTOLIPICCOLI');
  static const CARTONI = ProductDTOUnitMeasureEnum._(r'CARTONI');
  static const cARTONE6 = ProductDTOUnitMeasureEnum._(r'CARTONE6');
  static const cARTONE12 = ProductDTOUnitMeasureEnum._(r'CARTONE12');
  static const cARTONE24 = ProductDTOUnitMeasureEnum._(r'CARTONE24');
  static const cARTONE50 = ProductDTOUnitMeasureEnum._(r'CARTONE50');
  static const BOTTIGLIA = ProductDTOUnitMeasureEnum._(r'BOTTIGLIA');
  static const BARATTOLI = ProductDTOUnitMeasureEnum._(r'BARATTOLI');
  static const FARDELLO = ProductDTOUnitMeasureEnum._(r'FARDELLO');
  static const CT = ProductDTOUnitMeasureEnum._(r'CT');
  static const BOTTIGLIETTA = ProductDTOUnitMeasureEnum._(r'BOTTIGLIETTA');
  static const UNITA = ProductDTOUnitMeasureEnum._(r'UNITA');
  static const SECCHIO = ProductDTOUnitMeasureEnum._(r'SECCHIO');
  static const ALTRO = ProductDTOUnitMeasureEnum._(r'ALTRO');
  static const COLLO = ProductDTOUnitMeasureEnum._(r'COLLO');

  /// List of all possible values in this [enum][ProductDTOUnitMeasureEnum].
  static const values = <ProductDTOUnitMeasureEnum>[
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

  static ProductDTOUnitMeasureEnum? fromJson(dynamic value) => ProductDTOUnitMeasureEnumTypeTransformer().decode(value);

  static List<ProductDTOUnitMeasureEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductDTOUnitMeasureEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductDTOUnitMeasureEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProductDTOUnitMeasureEnum] to String,
/// and [decode] dynamic data back to [ProductDTOUnitMeasureEnum].
class ProductDTOUnitMeasureEnumTypeTransformer {
  factory ProductDTOUnitMeasureEnumTypeTransformer() => _instance ??= const ProductDTOUnitMeasureEnumTypeTransformer._();

  const ProductDTOUnitMeasureEnumTypeTransformer._();

  String encode(ProductDTOUnitMeasureEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProductDTOUnitMeasureEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProductDTOUnitMeasureEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'KG': return ProductDTOUnitMeasureEnum.KG;
        case r'PEZZI': return ProductDTOUnitMeasureEnum.PEZZI;
        case r'LITRI': return ProductDTOUnitMeasureEnum.LITRI;
        case r'PACCHI': return ProductDTOUnitMeasureEnum.PACCHI;
        case r'BARATTOLIPICCOLI': return ProductDTOUnitMeasureEnum.BARATTOLIPICCOLI;
        case r'CARTONI': return ProductDTOUnitMeasureEnum.CARTONI;
        case r'CARTONE6': return ProductDTOUnitMeasureEnum.cARTONE6;
        case r'CARTONE12': return ProductDTOUnitMeasureEnum.cARTONE12;
        case r'CARTONE24': return ProductDTOUnitMeasureEnum.cARTONE24;
        case r'CARTONE50': return ProductDTOUnitMeasureEnum.cARTONE50;
        case r'BOTTIGLIA': return ProductDTOUnitMeasureEnum.BOTTIGLIA;
        case r'BARATTOLI': return ProductDTOUnitMeasureEnum.BARATTOLI;
        case r'FARDELLO': return ProductDTOUnitMeasureEnum.FARDELLO;
        case r'CT': return ProductDTOUnitMeasureEnum.CT;
        case r'BOTTIGLIETTA': return ProductDTOUnitMeasureEnum.BOTTIGLIETTA;
        case r'UNITA': return ProductDTOUnitMeasureEnum.UNITA;
        case r'SECCHIO': return ProductDTOUnitMeasureEnum.SECCHIO;
        case r'ALTRO': return ProductDTOUnitMeasureEnum.ALTRO;
        case r'COLLO': return ProductDTOUnitMeasureEnum.COLLO;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProductDTOUnitMeasureEnumTypeTransformer] instance.
  static ProductDTOUnitMeasureEnumTypeTransformer? _instance;
}



class ProductDTOCategoryEnum {
  /// Instantiate a new enum with the provided [value].
  const ProductDTOCategoryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ALIMENTI = ProductDTOCategoryEnum._(r'ALIMENTI');
  static const BEVANDE = ProductDTOCategoryEnum._(r'BEVANDE');
  static const CARTOPLASTICA = ProductDTOCategoryEnum._(r'CARTOPLASTICA');
  static const ALTRO = ProductDTOCategoryEnum._(r'ALTRO');

  /// List of all possible values in this [enum][ProductDTOCategoryEnum].
  static const values = <ProductDTOCategoryEnum>[
    ALIMENTI,
    BEVANDE,
    CARTOPLASTICA,
    ALTRO,
  ];

  static ProductDTOCategoryEnum? fromJson(dynamic value) => ProductDTOCategoryEnumTypeTransformer().decode(value);

  static List<ProductDTOCategoryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductDTOCategoryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductDTOCategoryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProductDTOCategoryEnum] to String,
/// and [decode] dynamic data back to [ProductDTOCategoryEnum].
class ProductDTOCategoryEnumTypeTransformer {
  factory ProductDTOCategoryEnumTypeTransformer() => _instance ??= const ProductDTOCategoryEnumTypeTransformer._();

  const ProductDTOCategoryEnumTypeTransformer._();

  String encode(ProductDTOCategoryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProductDTOCategoryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProductDTOCategoryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ALIMENTI': return ProductDTOCategoryEnum.ALIMENTI;
        case r'BEVANDE': return ProductDTOCategoryEnum.BEVANDE;
        case r'CARTOPLASTICA': return ProductDTOCategoryEnum.CARTOPLASTICA;
        case r'ALTRO': return ProductDTOCategoryEnum.ALTRO;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProductDTOCategoryEnumTypeTransformer] instance.
  static ProductDTOCategoryEnumTypeTransformer? _instance;
}


