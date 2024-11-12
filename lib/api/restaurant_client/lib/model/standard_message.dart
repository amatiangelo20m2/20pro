//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StandardMessage {
  /// Returns a new [StandardMessage] instance.
  StandardMessage({
    this.messageCode,
    this.type,
    this.description,
    this.active,
    this.deletable,
    this.contentSms,
    this.contentWhatsapp,
    this.contentEmailTitle,
    this.contentEmail,
    this.createdAt,
    this.updatedAt,
    this.whatsAppEnabled,
    this.smsEnabled,
    this.emailEnabled,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? messageCode;

  StandardMessageTypeEnum? type;

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
  bool? active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deletable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentSms;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentWhatsapp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentEmailTitle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentEmail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? whatsAppEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? smsEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? emailEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StandardMessage &&
    other.messageCode == messageCode &&
    other.type == type &&
    other.description == description &&
    other.active == active &&
    other.deletable == deletable &&
    other.contentSms == contentSms &&
    other.contentWhatsapp == contentWhatsapp &&
    other.contentEmailTitle == contentEmailTitle &&
    other.contentEmail == contentEmail &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.whatsAppEnabled == whatsAppEnabled &&
    other.smsEnabled == smsEnabled &&
    other.emailEnabled == emailEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (messageCode == null ? 0 : messageCode!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (deletable == null ? 0 : deletable!.hashCode) +
    (contentSms == null ? 0 : contentSms!.hashCode) +
    (contentWhatsapp == null ? 0 : contentWhatsapp!.hashCode) +
    (contentEmailTitle == null ? 0 : contentEmailTitle!.hashCode) +
    (contentEmail == null ? 0 : contentEmail!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (whatsAppEnabled == null ? 0 : whatsAppEnabled!.hashCode) +
    (smsEnabled == null ? 0 : smsEnabled!.hashCode) +
    (emailEnabled == null ? 0 : emailEnabled!.hashCode);

  @override
  String toString() => 'StandardMessage[messageCode=$messageCode, type=$type, description=$description, active=$active, deletable=$deletable, contentSms=$contentSms, contentWhatsapp=$contentWhatsapp, contentEmailTitle=$contentEmailTitle, contentEmail=$contentEmail, createdAt=$createdAt, updatedAt=$updatedAt, whatsAppEnabled=$whatsAppEnabled, smsEnabled=$smsEnabled, emailEnabled=$emailEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.messageCode != null) {
      json[r'messageCode'] = this.messageCode;
    } else {
      json[r'messageCode'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.deletable != null) {
      json[r'deletable'] = this.deletable;
    } else {
      json[r'deletable'] = null;
    }
    if (this.contentSms != null) {
      json[r'contentSms'] = this.contentSms;
    } else {
      json[r'contentSms'] = null;
    }
    if (this.contentWhatsapp != null) {
      json[r'contentWhatsapp'] = this.contentWhatsapp;
    } else {
      json[r'contentWhatsapp'] = null;
    }
    if (this.contentEmailTitle != null) {
      json[r'contentEmailTitle'] = this.contentEmailTitle;
    } else {
      json[r'contentEmailTitle'] = null;
    }
    if (this.contentEmail != null) {
      json[r'contentEmail'] = this.contentEmail;
    } else {
      json[r'contentEmail'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.whatsAppEnabled != null) {
      json[r'whatsAppEnabled'] = this.whatsAppEnabled;
    } else {
      json[r'whatsAppEnabled'] = null;
    }
    if (this.smsEnabled != null) {
      json[r'smsEnabled'] = this.smsEnabled;
    } else {
      json[r'smsEnabled'] = null;
    }
    if (this.emailEnabled != null) {
      json[r'emailEnabled'] = this.emailEnabled;
    } else {
      json[r'emailEnabled'] = null;
    }
    return json;
  }

  /// Returns a new [StandardMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StandardMessage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StandardMessage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StandardMessage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StandardMessage(
        messageCode: mapValueOfType<String>(json, r'messageCode'),
        type: StandardMessageTypeEnum.fromJson(json[r'type']),
        description: mapValueOfType<String>(json, r'description'),
        active: mapValueOfType<bool>(json, r'active'),
        deletable: mapValueOfType<bool>(json, r'deletable'),
        contentSms: mapValueOfType<String>(json, r'contentSms'),
        contentWhatsapp: mapValueOfType<String>(json, r'contentWhatsapp'),
        contentEmailTitle: mapValueOfType<String>(json, r'contentEmailTitle'),
        contentEmail: mapValueOfType<String>(json, r'contentEmail'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        whatsAppEnabled: mapValueOfType<bool>(json, r'whatsAppEnabled'),
        smsEnabled: mapValueOfType<bool>(json, r'smsEnabled'),
        emailEnabled: mapValueOfType<bool>(json, r'emailEnabled'),
      );
    }
    return null;
  }

  static List<StandardMessage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StandardMessage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StandardMessage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StandardMessage> mapFromJson(dynamic json) {
    final map = <String, StandardMessage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StandardMessage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StandardMessage-objects as value to a dart map
  static Map<String, List<StandardMessage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StandardMessage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StandardMessage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class StandardMessageTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const StandardMessageTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ATT = StandardMessageTypeEnum._(r'ATT');
  static const CONF = StandardMessageTypeEnum._(r'CONF');
  static const REF = StandardMessageTypeEnum._(r'REF');
  static const DEL = StandardMessageTypeEnum._(r'DEL');
  static const fQ1 = StandardMessageTypeEnum._(r'FQ1');
  static const fQ2 = StandardMessageTypeEnum._(r'FQ2');
  static const EDTU = StandardMessageTypeEnum._(r'EDTU');
  static const EDTC = StandardMessageTypeEnum._(r'EDTC');
  static const EDTR = StandardMessageTypeEnum._(r'EDTR');
  static const cB1 = StandardMessageTypeEnum._(r'CB1');
  static const cB2 = StandardMessageTypeEnum._(r'CB2');
  static const cB3 = StandardMessageTypeEnum._(r'CB3');
  static const cB4 = StandardMessageTypeEnum._(r'CB4');
  static const cB5 = StandardMessageTypeEnum._(r'CB5');
  static const AAD = StandardMessageTypeEnum._(r'AAD');
  static const RRNS = StandardMessageTypeEnum._(r'RRNS');
  static const rRNS1 = StandardMessageTypeEnum._(r'RRNS1');
  static const rRNS2 = StandardMessageTypeEnum._(r'RRNS2');
  static const CBP = StandardMessageTypeEnum._(r'CBP');
  static const RPR = StandardMessageTypeEnum._(r'RPR');
  static const BRP = StandardMessageTypeEnum._(r'BRP');

  /// List of all possible values in this [enum][StandardMessageTypeEnum].
  static const values = <StandardMessageTypeEnum>[
    ATT,
    CONF,
    REF,
    DEL,
    fQ1,
    fQ2,
    EDTU,
    EDTC,
    EDTR,
    cB1,
    cB2,
    cB3,
    cB4,
    cB5,
    AAD,
    RRNS,
    rRNS1,
    rRNS2,
    CBP,
    RPR,
    BRP,
  ];

  static StandardMessageTypeEnum? fromJson(dynamic value) => StandardMessageTypeEnumTypeTransformer().decode(value);

  static List<StandardMessageTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StandardMessageTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StandardMessageTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StandardMessageTypeEnum] to String,
/// and [decode] dynamic data back to [StandardMessageTypeEnum].
class StandardMessageTypeEnumTypeTransformer {
  factory StandardMessageTypeEnumTypeTransformer() => _instance ??= const StandardMessageTypeEnumTypeTransformer._();

  const StandardMessageTypeEnumTypeTransformer._();

  String encode(StandardMessageTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StandardMessageTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StandardMessageTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ATT': return StandardMessageTypeEnum.ATT;
        case r'CONF': return StandardMessageTypeEnum.CONF;
        case r'REF': return StandardMessageTypeEnum.REF;
        case r'DEL': return StandardMessageTypeEnum.DEL;
        case r'FQ1': return StandardMessageTypeEnum.fQ1;
        case r'FQ2': return StandardMessageTypeEnum.fQ2;
        case r'EDTU': return StandardMessageTypeEnum.EDTU;
        case r'EDTC': return StandardMessageTypeEnum.EDTC;
        case r'EDTR': return StandardMessageTypeEnum.EDTR;
        case r'CB1': return StandardMessageTypeEnum.cB1;
        case r'CB2': return StandardMessageTypeEnum.cB2;
        case r'CB3': return StandardMessageTypeEnum.cB3;
        case r'CB4': return StandardMessageTypeEnum.cB4;
        case r'CB5': return StandardMessageTypeEnum.cB5;
        case r'AAD': return StandardMessageTypeEnum.AAD;
        case r'RRNS': return StandardMessageTypeEnum.RRNS;
        case r'RRNS1': return StandardMessageTypeEnum.rRNS1;
        case r'RRNS2': return StandardMessageTypeEnum.rRNS2;
        case r'CBP': return StandardMessageTypeEnum.CBP;
        case r'RPR': return StandardMessageTypeEnum.RPR;
        case r'BRP': return StandardMessageTypeEnum.BRP;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StandardMessageTypeEnumTypeTransformer] instance.
  static StandardMessageTypeEnumTypeTransformer? _instance;
}


