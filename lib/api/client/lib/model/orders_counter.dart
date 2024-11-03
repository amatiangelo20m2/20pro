//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrdersCounter {
  /// Returns a new [OrdersCounter] instance.
  OrdersCounter({
    this.ordersInLavorazione,
    this.orderDaConfermare,
    this.ordersInviato,
    this.ordersConsegnato,
    this.ordersProntoAPartire,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ordersInLavorazione;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orderDaConfermare;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ordersInviato;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ordersConsegnato;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ordersProntoAPartire;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrdersCounter &&
    other.ordersInLavorazione == ordersInLavorazione &&
    other.orderDaConfermare == orderDaConfermare &&
    other.ordersInviato == ordersInviato &&
    other.ordersConsegnato == ordersConsegnato &&
    other.ordersProntoAPartire == ordersProntoAPartire;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ordersInLavorazione == null ? 0 : ordersInLavorazione!.hashCode) +
    (orderDaConfermare == null ? 0 : orderDaConfermare!.hashCode) +
    (ordersInviato == null ? 0 : ordersInviato!.hashCode) +
    (ordersConsegnato == null ? 0 : ordersConsegnato!.hashCode) +
    (ordersProntoAPartire == null ? 0 : ordersProntoAPartire!.hashCode);

  @override
  String toString() => 'OrdersCounter[ordersInLavorazione=$ordersInLavorazione, orderDaConfermare=$orderDaConfermare, ordersInviato=$ordersInviato, ordersConsegnato=$ordersConsegnato, ordersProntoAPartire=$ordersProntoAPartire]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ordersInLavorazione != null) {
      json[r'ordersInLavorazione'] = this.ordersInLavorazione;
    } else {
      json[r'ordersInLavorazione'] = null;
    }
    if (this.orderDaConfermare != null) {
      json[r'orderDaConfermare'] = this.orderDaConfermare;
    } else {
      json[r'orderDaConfermare'] = null;
    }
    if (this.ordersInviato != null) {
      json[r'ordersInviato'] = this.ordersInviato;
    } else {
      json[r'ordersInviato'] = null;
    }
    if (this.ordersConsegnato != null) {
      json[r'ordersConsegnato'] = this.ordersConsegnato;
    } else {
      json[r'ordersConsegnato'] = null;
    }
    if (this.ordersProntoAPartire != null) {
      json[r'ordersProntoAPartire'] = this.ordersProntoAPartire;
    } else {
      json[r'ordersProntoAPartire'] = null;
    }
    return json;
  }

  /// Returns a new [OrdersCounter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrdersCounter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrdersCounter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrdersCounter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrdersCounter(
        ordersInLavorazione: mapValueOfType<int>(json, r'ordersInLavorazione'),
        orderDaConfermare: mapValueOfType<int>(json, r'orderDaConfermare'),
        ordersInviato: mapValueOfType<int>(json, r'ordersInviato'),
        ordersConsegnato: mapValueOfType<int>(json, r'ordersConsegnato'),
        ordersProntoAPartire: mapValueOfType<int>(json, r'ordersProntoAPartire'),
      );
    }
    return null;
  }

  static List<OrdersCounter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrdersCounter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrdersCounter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrdersCounter> mapFromJson(dynamic json) {
    final map = <String, OrdersCounter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrdersCounter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrdersCounter-objects as value to a dart map
  static Map<String, List<OrdersCounter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrdersCounter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrdersCounter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

