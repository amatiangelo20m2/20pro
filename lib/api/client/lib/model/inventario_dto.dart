//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InventarioDTO {
  /// Returns a new [InventarioDTO] instance.
  InventarioDTO({
    this.inventarioId,
    this.insertionDate,
    this.deletionDate,
    this.productDTO,
    this.inventoryAction = const {},
    this.stock,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? inventarioId;

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
  DateTime? deletionDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProductDTO? productDTO;

  Set<InventoryAction> inventoryAction;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? stock;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InventarioDTO &&
    other.inventarioId == inventarioId &&
    other.insertionDate == insertionDate &&
    other.deletionDate == deletionDate &&
    other.productDTO == productDTO &&
    _deepEquality.equals(other.inventoryAction, inventoryAction) &&
    other.stock == stock;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inventarioId == null ? 0 : inventarioId!.hashCode) +
    (insertionDate == null ? 0 : insertionDate!.hashCode) +
    (deletionDate == null ? 0 : deletionDate!.hashCode) +
    (productDTO == null ? 0 : productDTO!.hashCode) +
    (inventoryAction.hashCode) +
    (stock == null ? 0 : stock!.hashCode);

  @override
  String toString() => 'InventarioDTO[inventarioId=$inventarioId, insertionDate=$insertionDate, deletionDate=$deletionDate, productDTO=$productDTO, inventoryAction=$inventoryAction, stock=$stock]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.inventarioId != null) {
      json[r'inventarioId'] = this.inventarioId;
    } else {
      json[r'inventarioId'] = null;
    }
    if (this.insertionDate != null) {
      json[r'insertionDate'] = _dateFormatter.format(this.insertionDate!.toUtc());
    } else {
      json[r'insertionDate'] = null;
    }
    if (this.deletionDate != null) {
      json[r'deletionDate'] = _dateFormatter.format(this.deletionDate!.toUtc());
    } else {
      json[r'deletionDate'] = null;
    }
    if (this.productDTO != null) {
      json[r'productDTO'] = this.productDTO;
    } else {
      json[r'productDTO'] = null;
    }
      json[r'inventoryAction'] = this.inventoryAction.toList(growable: false);
    if (this.stock != null) {
      json[r'stock'] = this.stock;
    } else {
      json[r'stock'] = null;
    }
    return json;
  }

  /// Returns a new [InventarioDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InventarioDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InventarioDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InventarioDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InventarioDTO(
        inventarioId: mapValueOfType<int>(json, r'inventarioId'),
        insertionDate: mapDateTime(json, r'insertionDate', r''),
        deletionDate: mapDateTime(json, r'deletionDate', r''),
        productDTO: ProductDTO.fromJson(json[r'productDTO']),
        inventoryAction: InventoryAction.listFromJson(json[r'inventoryAction']).toSet(),
        stock: mapValueOfType<double>(json, r'stock'),
      );
    }
    return null;
  }

  static List<InventarioDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InventarioDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InventarioDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InventarioDTO> mapFromJson(dynamic json) {
    final map = <String, InventarioDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InventarioDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InventarioDTO-objects as value to a dart map
  static Map<String, List<InventarioDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InventarioDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InventarioDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

