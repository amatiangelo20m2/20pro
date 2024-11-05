//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FormDTO {
  /// Returns a new [FormDTO] instance.
  FormDTO({
    this.formId,
    this.formCode,
    this.formName,
    this.outputNameForCustomer,
    this.branchCode,
    this.branchName,
    this.branchAddress,
    this.redirectPage,
    this.creationDate,
    this.formType,
    this.formStatus,
    this.logo = const [],
    this.regularOpeningHours = const [],
    this.specialDays = const [],
    this.holidays = const [],
    this.cutterTimeForRanges,
    this.maxGuests,
    this.maxTableGuestNumber,
    this.dogsAreAccepted,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? formId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? outputNameForCustomer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branchCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branchName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branchAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? redirectPage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? creationDate;

  FormDTOFormTypeEnum? formType;

  FormDTOFormStatusEnum? formStatus;

  List<String> logo;

  List<OpeningHoursDTO> regularOpeningHours;

  List<SpecialDayDTO> specialDays;

  List<HolidaysDTO> holidays;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cutterTimeForRanges;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxGuests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxTableGuestNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dogsAreAccepted;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FormDTO &&
    other.formId == formId &&
    other.formCode == formCode &&
    other.formName == formName &&
    other.outputNameForCustomer == outputNameForCustomer &&
    other.branchCode == branchCode &&
    other.branchName == branchName &&
    other.branchAddress == branchAddress &&
    other.redirectPage == redirectPage &&
    other.creationDate == creationDate &&
    other.formType == formType &&
    other.formStatus == formStatus &&
    _deepEquality.equals(other.logo, logo) &&
    _deepEquality.equals(other.regularOpeningHours, regularOpeningHours) &&
    _deepEquality.equals(other.specialDays, specialDays) &&
    _deepEquality.equals(other.holidays, holidays) &&
    other.cutterTimeForRanges == cutterTimeForRanges &&
    other.maxGuests == maxGuests &&
    other.maxTableGuestNumber == maxTableGuestNumber &&
    other.dogsAreAccepted == dogsAreAccepted;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (formId == null ? 0 : formId!.hashCode) +
    (formCode == null ? 0 : formCode!.hashCode) +
    (formName == null ? 0 : formName!.hashCode) +
    (outputNameForCustomer == null ? 0 : outputNameForCustomer!.hashCode) +
    (branchCode == null ? 0 : branchCode!.hashCode) +
    (branchName == null ? 0 : branchName!.hashCode) +
    (branchAddress == null ? 0 : branchAddress!.hashCode) +
    (redirectPage == null ? 0 : redirectPage!.hashCode) +
    (creationDate == null ? 0 : creationDate!.hashCode) +
    (formType == null ? 0 : formType!.hashCode) +
    (formStatus == null ? 0 : formStatus!.hashCode) +
    (logo.hashCode) +
    (regularOpeningHours.hashCode) +
    (specialDays.hashCode) +
    (holidays.hashCode) +
    (cutterTimeForRanges == null ? 0 : cutterTimeForRanges!.hashCode) +
    (maxGuests == null ? 0 : maxGuests!.hashCode) +
    (maxTableGuestNumber == null ? 0 : maxTableGuestNumber!.hashCode) +
    (dogsAreAccepted == null ? 0 : dogsAreAccepted!.hashCode);

  @override
  String toString() => 'FormDTO[formId=$formId, formCode=$formCode, formName=$formName, outputNameForCustomer=$outputNameForCustomer, branchCode=$branchCode, branchName=$branchName, branchAddress=$branchAddress, redirectPage=$redirectPage, creationDate=$creationDate, formType=$formType, formStatus=$formStatus, logo=$logo, regularOpeningHours=$regularOpeningHours, specialDays=$specialDays, holidays=$holidays, cutterTimeForRanges=$cutterTimeForRanges, maxGuests=$maxGuests, maxTableGuestNumber=$maxTableGuestNumber, dogsAreAccepted=$dogsAreAccepted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.formId != null) {
      json[r'formId'] = this.formId;
    } else {
      json[r'formId'] = null;
    }
    if (this.formCode != null) {
      json[r'formCode'] = this.formCode;
    } else {
      json[r'formCode'] = null;
    }
    if (this.formName != null) {
      json[r'formName'] = this.formName;
    } else {
      json[r'formName'] = null;
    }
    if (this.outputNameForCustomer != null) {
      json[r'outputNameForCustomer'] = this.outputNameForCustomer;
    } else {
      json[r'outputNameForCustomer'] = null;
    }
    if (this.branchCode != null) {
      json[r'branchCode'] = this.branchCode;
    } else {
      json[r'branchCode'] = null;
    }
    if (this.branchName != null) {
      json[r'branchName'] = this.branchName;
    } else {
      json[r'branchName'] = null;
    }
    if (this.branchAddress != null) {
      json[r'branchAddress'] = this.branchAddress;
    } else {
      json[r'branchAddress'] = null;
    }
    if (this.redirectPage != null) {
      json[r'redirectPage'] = this.redirectPage;
    } else {
      json[r'redirectPage'] = null;
    }
    if (this.creationDate != null) {
      json[r'creationDate'] = this.creationDate!.toUtc().toIso8601String();
    } else {
      json[r'creationDate'] = null;
    }
    if (this.formType != null) {
      json[r'formType'] = this.formType;
    } else {
      json[r'formType'] = null;
    }
    if (this.formStatus != null) {
      json[r'formStatus'] = this.formStatus;
    } else {
      json[r'formStatus'] = null;
    }
      json[r'logo'] = this.logo;
      json[r'regularOpeningHours'] = this.regularOpeningHours;
      json[r'specialDays'] = this.specialDays;
      json[r'holidays'] = this.holidays;
    if (this.cutterTimeForRanges != null) {
      json[r'cutterTimeForRanges'] = this.cutterTimeForRanges;
    } else {
      json[r'cutterTimeForRanges'] = null;
    }
    if (this.maxGuests != null) {
      json[r'maxGuests'] = this.maxGuests;
    } else {
      json[r'maxGuests'] = null;
    }
    if (this.maxTableGuestNumber != null) {
      json[r'maxTableGuestNumber'] = this.maxTableGuestNumber;
    } else {
      json[r'maxTableGuestNumber'] = null;
    }
    if (this.dogsAreAccepted != null) {
      json[r'dogsAreAccepted'] = this.dogsAreAccepted;
    } else {
      json[r'dogsAreAccepted'] = null;
    }
    return json;
  }

  /// Returns a new [FormDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FormDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FormDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FormDTO(
        formId: mapValueOfType<int>(json, r'formId'),
        formCode: mapValueOfType<String>(json, r'formCode'),
        formName: mapValueOfType<String>(json, r'formName'),
        outputNameForCustomer: mapValueOfType<String>(json, r'outputNameForCustomer'),
        branchCode: mapValueOfType<String>(json, r'branchCode'),
        branchName: mapValueOfType<String>(json, r'branchName'),
        branchAddress: mapValueOfType<String>(json, r'branchAddress'),
        redirectPage: mapValueOfType<String>(json, r'redirectPage'),
        creationDate: mapDateTime(json, r'creationDate', r''),
        formType: FormDTOFormTypeEnum.fromJson(json[r'formType']),
        formStatus: FormDTOFormStatusEnum.fromJson(json[r'formStatus']),
        logo: json[r'logo'] is Iterable
            ? (json[r'logo'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        regularOpeningHours: OpeningHoursDTO.listFromJson(json[r'regularOpeningHours']),
        specialDays: SpecialDayDTO.listFromJson(json[r'specialDays']),
        holidays: HolidaysDTO.listFromJson(json[r'holidays']),
        cutterTimeForRanges: mapValueOfType<int>(json, r'cutterTimeForRanges'),
        maxGuests: mapValueOfType<int>(json, r'maxGuests'),
        maxTableGuestNumber: mapValueOfType<int>(json, r'maxTableGuestNumber'),
        dogsAreAccepted: mapValueOfType<bool>(json, r'dogsAreAccepted'),
      );
    }
    return null;
  }

  static List<FormDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FormDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FormDTO> mapFromJson(dynamic json) {
    final map = <String, FormDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FormDTO-objects as value to a dart map
  static Map<String, List<FormDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FormDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FormDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class FormDTOFormTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const FormDTOFormTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRENOTAZIONE = FormDTOFormTypeEnum._(r'PRENOTAZIONE');
  static const RACCOLTA_DATI = FormDTOFormTypeEnum._(r'RACCOLTA_DATI');

  /// List of all possible values in this [enum][FormDTOFormTypeEnum].
  static const values = <FormDTOFormTypeEnum>[
    PRENOTAZIONE,
    RACCOLTA_DATI,
  ];

  static FormDTOFormTypeEnum? fromJson(dynamic value) => FormDTOFormTypeEnumTypeTransformer().decode(value);

  static List<FormDTOFormTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FormDTOFormTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormDTOFormTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FormDTOFormTypeEnum] to String,
/// and [decode] dynamic data back to [FormDTOFormTypeEnum].
class FormDTOFormTypeEnumTypeTransformer {
  factory FormDTOFormTypeEnumTypeTransformer() => _instance ??= const FormDTOFormTypeEnumTypeTransformer._();

  const FormDTOFormTypeEnumTypeTransformer._();

  String encode(FormDTOFormTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FormDTOFormTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FormDTOFormTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PRENOTAZIONE': return FormDTOFormTypeEnum.PRENOTAZIONE;
        case r'RACCOLTA_DATI': return FormDTOFormTypeEnum.RACCOLTA_DATI;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FormDTOFormTypeEnumTypeTransformer] instance.
  static FormDTOFormTypeEnumTypeTransformer? _instance;
}



class FormDTOFormStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const FormDTOFormStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ATTIVO = FormDTOFormStatusEnum._(r'ATTIVO');
  static const SOSPESO = FormDTOFormStatusEnum._(r'SOSPESO');
  static const CANCELLATO = FormDTOFormStatusEnum._(r'CANCELLATO');

  /// List of all possible values in this [enum][FormDTOFormStatusEnum].
  static const values = <FormDTOFormStatusEnum>[
    ATTIVO,
    SOSPESO,
    CANCELLATO,
  ];

  static FormDTOFormStatusEnum? fromJson(dynamic value) => FormDTOFormStatusEnumTypeTransformer().decode(value);

  static List<FormDTOFormStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FormDTOFormStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormDTOFormStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FormDTOFormStatusEnum] to String,
/// and [decode] dynamic data back to [FormDTOFormStatusEnum].
class FormDTOFormStatusEnumTypeTransformer {
  factory FormDTOFormStatusEnumTypeTransformer() => _instance ??= const FormDTOFormStatusEnumTypeTransformer._();

  const FormDTOFormStatusEnumTypeTransformer._();

  String encode(FormDTOFormStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FormDTOFormStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FormDTOFormStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ATTIVO': return FormDTOFormStatusEnum.ATTIVO;
        case r'SOSPESO': return FormDTOFormStatusEnum.SOSPESO;
        case r'CANCELLATO': return FormDTOFormStatusEnum.CANCELLATO;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FormDTOFormStatusEnumTypeTransformer] instance.
  static FormDTOFormStatusEnumTypeTransformer? _instance;
}


