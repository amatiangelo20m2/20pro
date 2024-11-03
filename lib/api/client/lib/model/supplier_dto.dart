//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SupplierDTO {
  /// Returns a new [SupplierDTO] instance.
  SupplierDTO({
    this.supplierId,
    this.name,
    this.vatNumber,
    this.address,
    this.city,
    this.cap,
    this.cf,
    this.phoneNumber,
    this.email,
    this.pec,
    this.supplierCode,
    this.country,
    this.productDTOList = const [],
    this.createdByUserCode,
    this.branchNotAllowed = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? supplierId;

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
  String? vatNumber;

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
  String? cf;

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
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pec;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? supplierCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

  List<ProductDTO> productDTOList;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdByUserCode;

  List<String> branchNotAllowed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SupplierDTO &&
    other.supplierId == supplierId &&
    other.name == name &&
    other.vatNumber == vatNumber &&
    other.address == address &&
    other.city == city &&
    other.cap == cap &&
    other.cf == cf &&
    other.phoneNumber == phoneNumber &&
    other.email == email &&
    other.pec == pec &&
    other.supplierCode == supplierCode &&
    other.country == country &&
    _deepEquality.equals(other.productDTOList, productDTOList) &&
    other.createdByUserCode == createdByUserCode &&
    _deepEquality.equals(other.branchNotAllowed, branchNotAllowed);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (supplierId == null ? 0 : supplierId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (vatNumber == null ? 0 : vatNumber!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (cap == null ? 0 : cap!.hashCode) +
    (cf == null ? 0 : cf!.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (pec == null ? 0 : pec!.hashCode) +
    (supplierCode == null ? 0 : supplierCode!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (productDTOList.hashCode) +
    (createdByUserCode == null ? 0 : createdByUserCode!.hashCode) +
    (branchNotAllowed.hashCode);

  @override
  String toString() => 'SupplierDTO[supplierId=$supplierId, name=$name, vatNumber=$vatNumber, address=$address, city=$city, cap=$cap, cf=$cf, phoneNumber=$phoneNumber, email=$email, pec=$pec, supplierCode=$supplierCode, country=$country, productDTOList=$productDTOList, createdByUserCode=$createdByUserCode, branchNotAllowed=$branchNotAllowed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.supplierId != null) {
      json[r'supplierId'] = this.supplierId;
    } else {
      json[r'supplierId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.vatNumber != null) {
      json[r'vatNumber'] = this.vatNumber;
    } else {
      json[r'vatNumber'] = null;
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
    if (this.cf != null) {
      json[r'cf'] = this.cf;
    } else {
      json[r'cf'] = null;
    }
    if (this.phoneNumber != null) {
      json[r'phoneNumber'] = this.phoneNumber;
    } else {
      json[r'phoneNumber'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.pec != null) {
      json[r'pec'] = this.pec;
    } else {
      json[r'pec'] = null;
    }
    if (this.supplierCode != null) {
      json[r'supplierCode'] = this.supplierCode;
    } else {
      json[r'supplierCode'] = null;
    }
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
      json[r'productDTOList'] = this.productDTOList;
    if (this.createdByUserCode != null) {
      json[r'createdByUserCode'] = this.createdByUserCode;
    } else {
      json[r'createdByUserCode'] = null;
    }
      json[r'branchNotAllowed'] = this.branchNotAllowed;
    return json;
  }

  /// Returns a new [SupplierDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SupplierDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SupplierDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SupplierDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SupplierDTO(
        supplierId: mapValueOfType<int>(json, r'supplierId'),
        name: mapValueOfType<String>(json, r'name'),
        vatNumber: mapValueOfType<String>(json, r'vatNumber'),
        address: mapValueOfType<String>(json, r'address'),
        city: mapValueOfType<String>(json, r'city'),
        cap: mapValueOfType<String>(json, r'cap'),
        cf: mapValueOfType<String>(json, r'cf'),
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber'),
        email: mapValueOfType<String>(json, r'email'),
        pec: mapValueOfType<String>(json, r'pec'),
        supplierCode: mapValueOfType<String>(json, r'supplierCode'),
        country: mapValueOfType<String>(json, r'country'),
        productDTOList: ProductDTO.listFromJson(json[r'productDTOList']),
        createdByUserCode: mapValueOfType<String>(json, r'createdByUserCode'),
        branchNotAllowed: json[r'branchNotAllowed'] is Iterable
            ? (json[r'branchNotAllowed'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<SupplierDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SupplierDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SupplierDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SupplierDTO> mapFromJson(dynamic json) {
    final map = <String, SupplierDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SupplierDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SupplierDTO-objects as value to a dart map
  static Map<String, List<SupplierDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SupplierDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SupplierDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

