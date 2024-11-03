//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderResultRecap {
  /// Returns a new [OrderResultRecap] instance.
  OrderResultRecap({
    this.incomingsOrders = const [],
    this.outgoingOrders = const [],
  });

  List<DetailedProductRecap> incomingsOrders;

  List<DetailedProductRecap> outgoingOrders;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderResultRecap &&
    _deepEquality.equals(other.incomingsOrders, incomingsOrders) &&
    _deepEquality.equals(other.outgoingOrders, outgoingOrders);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (incomingsOrders.hashCode) +
    (outgoingOrders.hashCode);

  @override
  String toString() => 'OrderResultRecap[incomingsOrders=$incomingsOrders, outgoingOrders=$outgoingOrders]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'incomingsOrders'] = this.incomingsOrders;
      json[r'outgoingOrders'] = this.outgoingOrders;
    return json;
  }

  /// Returns a new [OrderResultRecap] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderResultRecap? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderResultRecap[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderResultRecap[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderResultRecap(
        incomingsOrders: DetailedProductRecap.listFromJson(json[r'incomingsOrders']),
        outgoingOrders: DetailedProductRecap.listFromJson(json[r'outgoingOrders']),
      );
    }
    return null;
  }

  static List<OrderResultRecap> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderResultRecap>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderResultRecap.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderResultRecap> mapFromJson(dynamic json) {
    final map = <String, OrderResultRecap>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderResultRecap.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderResultRecap-objects as value to a dart map
  static Map<String, List<OrderResultRecap>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderResultRecap>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderResultRecap.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

