//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmployeeReportSummaryDTO {
  /// Returns a new [EmployeeReportSummaryDTO] instance.
  EmployeeReportSummaryDTO({
    this.employeeId,
    this.firstName,
    this.lastName,
    this.gender,
    this.jobDescription,
    this.dob,
    this.startDateInduction,
    this.endDateInduction,
    this.contractType,
    this.phone,
    this.totalWorkedHours,
    this.lunchCount,
    this.dinnerCount,
    this.totalHolidays,
    this.totalIllnessDays,
    this.totalRestDays,
    this.visible,
    this.fired,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? employeeId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  EmployeeReportSummaryDTOGenderEnum? gender;

  EmployeeReportSummaryDTOJobDescriptionEnum? jobDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? dob;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startDateInduction;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endDateInduction;

  EmployeeReportSummaryDTOContractTypeEnum? contractType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalWorkedHours;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lunchCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dinnerCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalHolidays;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalIllnessDays;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalRestDays;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? visible;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? fired;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmployeeReportSummaryDTO &&
    other.employeeId == employeeId &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.gender == gender &&
    other.jobDescription == jobDescription &&
    other.dob == dob &&
    other.startDateInduction == startDateInduction &&
    other.endDateInduction == endDateInduction &&
    other.contractType == contractType &&
    other.phone == phone &&
    other.totalWorkedHours == totalWorkedHours &&
    other.lunchCount == lunchCount &&
    other.dinnerCount == dinnerCount &&
    other.totalHolidays == totalHolidays &&
    other.totalIllnessDays == totalIllnessDays &&
    other.totalRestDays == totalRestDays &&
    other.visible == visible &&
    other.fired == fired;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (employeeId == null ? 0 : employeeId!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (gender == null ? 0 : gender!.hashCode) +
    (jobDescription == null ? 0 : jobDescription!.hashCode) +
    (dob == null ? 0 : dob!.hashCode) +
    (startDateInduction == null ? 0 : startDateInduction!.hashCode) +
    (endDateInduction == null ? 0 : endDateInduction!.hashCode) +
    (contractType == null ? 0 : contractType!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (totalWorkedHours == null ? 0 : totalWorkedHours!.hashCode) +
    (lunchCount == null ? 0 : lunchCount!.hashCode) +
    (dinnerCount == null ? 0 : dinnerCount!.hashCode) +
    (totalHolidays == null ? 0 : totalHolidays!.hashCode) +
    (totalIllnessDays == null ? 0 : totalIllnessDays!.hashCode) +
    (totalRestDays == null ? 0 : totalRestDays!.hashCode) +
    (visible == null ? 0 : visible!.hashCode) +
    (fired == null ? 0 : fired!.hashCode);

  @override
  String toString() => 'EmployeeReportSummaryDTO[employeeId=$employeeId, firstName=$firstName, lastName=$lastName, gender=$gender, jobDescription=$jobDescription, dob=$dob, startDateInduction=$startDateInduction, endDateInduction=$endDateInduction, contractType=$contractType, phone=$phone, totalWorkedHours=$totalWorkedHours, lunchCount=$lunchCount, dinnerCount=$dinnerCount, totalHolidays=$totalHolidays, totalIllnessDays=$totalIllnessDays, totalRestDays=$totalRestDays, visible=$visible, fired=$fired]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.employeeId != null) {
      json[r'employeeId'] = this.employeeId;
    } else {
      json[r'employeeId'] = null;
    }
    if (this.firstName != null) {
      json[r'firstName'] = this.firstName;
    } else {
      json[r'firstName'] = null;
    }
    if (this.lastName != null) {
      json[r'lastName'] = this.lastName;
    } else {
      json[r'lastName'] = null;
    }
    if (this.gender != null) {
      json[r'gender'] = this.gender;
    } else {
      json[r'gender'] = null;
    }
    if (this.jobDescription != null) {
      json[r'jobDescription'] = this.jobDescription;
    } else {
      json[r'jobDescription'] = null;
    }
    if (this.dob != null) {
      json[r'dob'] = _dateFormatter.format(this.dob!.toUtc());
    } else {
      json[r'dob'] = null;
    }
    if (this.startDateInduction != null) {
      json[r'startDateInduction'] = _dateFormatter.format(this.startDateInduction!.toUtc());
    } else {
      json[r'startDateInduction'] = null;
    }
    if (this.endDateInduction != null) {
      json[r'endDateInduction'] = _dateFormatter.format(this.endDateInduction!.toUtc());
    } else {
      json[r'endDateInduction'] = null;
    }
    if (this.contractType != null) {
      json[r'contractType'] = this.contractType;
    } else {
      json[r'contractType'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
    if (this.totalWorkedHours != null) {
      json[r'totalWorkedHours'] = this.totalWorkedHours;
    } else {
      json[r'totalWorkedHours'] = null;
    }
    if (this.lunchCount != null) {
      json[r'lunchCount'] = this.lunchCount;
    } else {
      json[r'lunchCount'] = null;
    }
    if (this.dinnerCount != null) {
      json[r'dinnerCount'] = this.dinnerCount;
    } else {
      json[r'dinnerCount'] = null;
    }
    if (this.totalHolidays != null) {
      json[r'totalHolidays'] = this.totalHolidays;
    } else {
      json[r'totalHolidays'] = null;
    }
    if (this.totalIllnessDays != null) {
      json[r'totalIllnessDays'] = this.totalIllnessDays;
    } else {
      json[r'totalIllnessDays'] = null;
    }
    if (this.totalRestDays != null) {
      json[r'totalRestDays'] = this.totalRestDays;
    } else {
      json[r'totalRestDays'] = null;
    }
    if (this.visible != null) {
      json[r'visible'] = this.visible;
    } else {
      json[r'visible'] = null;
    }
    if (this.fired != null) {
      json[r'fired'] = this.fired;
    } else {
      json[r'fired'] = null;
    }
    return json;
  }

  /// Returns a new [EmployeeReportSummaryDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmployeeReportSummaryDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmployeeReportSummaryDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmployeeReportSummaryDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmployeeReportSummaryDTO(
        employeeId: mapValueOfType<int>(json, r'employeeId'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        gender: EmployeeReportSummaryDTOGenderEnum.fromJson(json[r'gender']),
        jobDescription: EmployeeReportSummaryDTOJobDescriptionEnum.fromJson(json[r'jobDescription']),
        dob: mapDateTime(json, r'dob', r''),
        startDateInduction: mapDateTime(json, r'startDateInduction', r''),
        endDateInduction: mapDateTime(json, r'endDateInduction', r''),
        contractType: EmployeeReportSummaryDTOContractTypeEnum.fromJson(json[r'contractType']),
        phone: mapValueOfType<String>(json, r'phone'),
        totalWorkedHours: mapValueOfType<int>(json, r'totalWorkedHours'),
        lunchCount: mapValueOfType<int>(json, r'lunchCount'),
        dinnerCount: mapValueOfType<int>(json, r'dinnerCount'),
        totalHolidays: mapValueOfType<int>(json, r'totalHolidays'),
        totalIllnessDays: mapValueOfType<int>(json, r'totalIllnessDays'),
        totalRestDays: mapValueOfType<int>(json, r'totalRestDays'),
        visible: mapValueOfType<bool>(json, r'visible'),
        fired: mapValueOfType<bool>(json, r'fired'),
      );
    }
    return null;
  }

  static List<EmployeeReportSummaryDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmployeeReportSummaryDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmployeeReportSummaryDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmployeeReportSummaryDTO> mapFromJson(dynamic json) {
    final map = <String, EmployeeReportSummaryDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmployeeReportSummaryDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmployeeReportSummaryDTO-objects as value to a dart map
  static Map<String, List<EmployeeReportSummaryDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmployeeReportSummaryDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmployeeReportSummaryDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class EmployeeReportSummaryDTOGenderEnum {
  /// Instantiate a new enum with the provided [value].
  const EmployeeReportSummaryDTOGenderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const UOMO = EmployeeReportSummaryDTOGenderEnum._(r'UOMO');
  static const DONNA = EmployeeReportSummaryDTOGenderEnum._(r'DONNA');

  /// List of all possible values in this [enum][EmployeeReportSummaryDTOGenderEnum].
  static const values = <EmployeeReportSummaryDTOGenderEnum>[
    UOMO,
    DONNA,
  ];

  static EmployeeReportSummaryDTOGenderEnum? fromJson(dynamic value) => EmployeeReportSummaryDTOGenderEnumTypeTransformer().decode(value);

  static List<EmployeeReportSummaryDTOGenderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmployeeReportSummaryDTOGenderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmployeeReportSummaryDTOGenderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmployeeReportSummaryDTOGenderEnum] to String,
/// and [decode] dynamic data back to [EmployeeReportSummaryDTOGenderEnum].
class EmployeeReportSummaryDTOGenderEnumTypeTransformer {
  factory EmployeeReportSummaryDTOGenderEnumTypeTransformer() => _instance ??= const EmployeeReportSummaryDTOGenderEnumTypeTransformer._();

  const EmployeeReportSummaryDTOGenderEnumTypeTransformer._();

  String encode(EmployeeReportSummaryDTOGenderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmployeeReportSummaryDTOGenderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmployeeReportSummaryDTOGenderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UOMO': return EmployeeReportSummaryDTOGenderEnum.UOMO;
        case r'DONNA': return EmployeeReportSummaryDTOGenderEnum.DONNA;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmployeeReportSummaryDTOGenderEnumTypeTransformer] instance.
  static EmployeeReportSummaryDTOGenderEnumTypeTransformer? _instance;
}



class EmployeeReportSummaryDTOJobDescriptionEnum {
  /// Instantiate a new enum with the provided [value].
  const EmployeeReportSummaryDTOJobDescriptionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AMMINISTRATORE = EmployeeReportSummaryDTOJobDescriptionEnum._(r'AMMINISTRATORE');
  static const ADDETTA_AL_MARKETING = EmployeeReportSummaryDTOJobDescriptionEnum._(r'ADDETTA_AL_MARKETING');
  static const ADDETTO_ALL_ACCOGLIENZA_CLIENTI = EmployeeReportSummaryDTOJobDescriptionEnum._(r'ADDETTO_ALL_ACCOGLIENZA_CLIENTI');
  static const AIUTO_BARMAN = EmployeeReportSummaryDTOJobDescriptionEnum._(r'AIUTO_BARMAN');
  static const AIUTO_CUOCO = EmployeeReportSummaryDTOJobDescriptionEnum._(r'AIUTO_CUOCO');
  static const ADD_ALLA_CUCINA = EmployeeReportSummaryDTOJobDescriptionEnum._(r'ADD_ALLA_CUCINA');
  static const AIUTO_CAMERIERE = EmployeeReportSummaryDTOJobDescriptionEnum._(r'AIUTO_CAMERIERE');
  static const BARMAN = EmployeeReportSummaryDTOJobDescriptionEnum._(r'BARMAN');
  static const CAMERIERE_DI_BAR = EmployeeReportSummaryDTOJobDescriptionEnum._(r'CAMERIERE_DI_BAR');
  static const CAMERIERE = EmployeeReportSummaryDTOJobDescriptionEnum._(r'CAMERIERE');
  static const CUOCO = EmployeeReportSummaryDTOJobDescriptionEnum._(r'CUOCO');
  static const CUOCO_DI_RISTORANTE = EmployeeReportSummaryDTOJobDescriptionEnum._(r'CUOCO_DI_RISTORANTE');
  static const COORDINATRICE_DI_SALA = EmployeeReportSummaryDTOJobDescriptionEnum._(r'COORDINATRICE_DI_SALA');
  static const COMMIS_DI_CUCINA = EmployeeReportSummaryDTOJobDescriptionEnum._(r'COMMIS_DI_CUCINA');
  static const DIRETTORE_SALA_DEHORS = EmployeeReportSummaryDTOJobDescriptionEnum._(r'DIRETTORE_SALA_DEHORS');
  static const FOOD_AND_BEVERAGE_MANAGER = EmployeeReportSummaryDTOJobDescriptionEnum._(r'FOOD_AND_BEVERAGE_MANAGER');
  static const LAVAPIATTI = EmployeeReportSummaryDTOJobDescriptionEnum._(r'LAVAPIATTI');
  static const PASTICCIERE = EmployeeReportSummaryDTOJobDescriptionEnum._(r'PASTICCIERE');
  static const PIZZAIOLO = EmployeeReportSummaryDTOJobDescriptionEnum._(r'PIZZAIOLO');
  static const RESPONSABILE_DI_SALA = EmployeeReportSummaryDTOJobDescriptionEnum._(r'RESPONSABILE_DI_SALA');
  static const TECNICI_WEB = EmployeeReportSummaryDTOJobDescriptionEnum._(r'TECNICI_WEB');

  /// List of all possible values in this [enum][EmployeeReportSummaryDTOJobDescriptionEnum].
  static const values = <EmployeeReportSummaryDTOJobDescriptionEnum>[
    AMMINISTRATORE,
    ADDETTA_AL_MARKETING,
    ADDETTO_ALL_ACCOGLIENZA_CLIENTI,
    AIUTO_BARMAN,
    AIUTO_CUOCO,
    ADD_ALLA_CUCINA,
    AIUTO_CAMERIERE,
    BARMAN,
    CAMERIERE_DI_BAR,
    CAMERIERE,
    CUOCO,
    CUOCO_DI_RISTORANTE,
    COORDINATRICE_DI_SALA,
    COMMIS_DI_CUCINA,
    DIRETTORE_SALA_DEHORS,
    FOOD_AND_BEVERAGE_MANAGER,
    LAVAPIATTI,
    PASTICCIERE,
    PIZZAIOLO,
    RESPONSABILE_DI_SALA,
    TECNICI_WEB,
  ];

  static EmployeeReportSummaryDTOJobDescriptionEnum? fromJson(dynamic value) => EmployeeReportSummaryDTOJobDescriptionEnumTypeTransformer().decode(value);

  static List<EmployeeReportSummaryDTOJobDescriptionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmployeeReportSummaryDTOJobDescriptionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmployeeReportSummaryDTOJobDescriptionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmployeeReportSummaryDTOJobDescriptionEnum] to String,
/// and [decode] dynamic data back to [EmployeeReportSummaryDTOJobDescriptionEnum].
class EmployeeReportSummaryDTOJobDescriptionEnumTypeTransformer {
  factory EmployeeReportSummaryDTOJobDescriptionEnumTypeTransformer() => _instance ??= const EmployeeReportSummaryDTOJobDescriptionEnumTypeTransformer._();

  const EmployeeReportSummaryDTOJobDescriptionEnumTypeTransformer._();

  String encode(EmployeeReportSummaryDTOJobDescriptionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmployeeReportSummaryDTOJobDescriptionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmployeeReportSummaryDTOJobDescriptionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AMMINISTRATORE': return EmployeeReportSummaryDTOJobDescriptionEnum.AMMINISTRATORE;
        case r'ADDETTA_AL_MARKETING': return EmployeeReportSummaryDTOJobDescriptionEnum.ADDETTA_AL_MARKETING;
        case r'ADDETTO_ALL_ACCOGLIENZA_CLIENTI': return EmployeeReportSummaryDTOJobDescriptionEnum.ADDETTO_ALL_ACCOGLIENZA_CLIENTI;
        case r'AIUTO_BARMAN': return EmployeeReportSummaryDTOJobDescriptionEnum.AIUTO_BARMAN;
        case r'AIUTO_CUOCO': return EmployeeReportSummaryDTOJobDescriptionEnum.AIUTO_CUOCO;
        case r'ADD_ALLA_CUCINA': return EmployeeReportSummaryDTOJobDescriptionEnum.ADD_ALLA_CUCINA;
        case r'AIUTO_CAMERIERE': return EmployeeReportSummaryDTOJobDescriptionEnum.AIUTO_CAMERIERE;
        case r'BARMAN': return EmployeeReportSummaryDTOJobDescriptionEnum.BARMAN;
        case r'CAMERIERE_DI_BAR': return EmployeeReportSummaryDTOJobDescriptionEnum.CAMERIERE_DI_BAR;
        case r'CAMERIERE': return EmployeeReportSummaryDTOJobDescriptionEnum.CAMERIERE;
        case r'CUOCO': return EmployeeReportSummaryDTOJobDescriptionEnum.CUOCO;
        case r'CUOCO_DI_RISTORANTE': return EmployeeReportSummaryDTOJobDescriptionEnum.CUOCO_DI_RISTORANTE;
        case r'COORDINATRICE_DI_SALA': return EmployeeReportSummaryDTOJobDescriptionEnum.COORDINATRICE_DI_SALA;
        case r'COMMIS_DI_CUCINA': return EmployeeReportSummaryDTOJobDescriptionEnum.COMMIS_DI_CUCINA;
        case r'DIRETTORE_SALA_DEHORS': return EmployeeReportSummaryDTOJobDescriptionEnum.DIRETTORE_SALA_DEHORS;
        case r'FOOD_AND_BEVERAGE_MANAGER': return EmployeeReportSummaryDTOJobDescriptionEnum.FOOD_AND_BEVERAGE_MANAGER;
        case r'LAVAPIATTI': return EmployeeReportSummaryDTOJobDescriptionEnum.LAVAPIATTI;
        case r'PASTICCIERE': return EmployeeReportSummaryDTOJobDescriptionEnum.PASTICCIERE;
        case r'PIZZAIOLO': return EmployeeReportSummaryDTOJobDescriptionEnum.PIZZAIOLO;
        case r'RESPONSABILE_DI_SALA': return EmployeeReportSummaryDTOJobDescriptionEnum.RESPONSABILE_DI_SALA;
        case r'TECNICI_WEB': return EmployeeReportSummaryDTOJobDescriptionEnum.TECNICI_WEB;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmployeeReportSummaryDTOJobDescriptionEnumTypeTransformer] instance.
  static EmployeeReportSummaryDTOJobDescriptionEnumTypeTransformer? _instance;
}



class EmployeeReportSummaryDTOContractTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const EmployeeReportSummaryDTOContractTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DETERMINATO = EmployeeReportSummaryDTOContractTypeEnum._(r'DETERMINATO');
  static const INDETERMINATO = EmployeeReportSummaryDTOContractTypeEnum._(r'INDETERMINATO');

  /// List of all possible values in this [enum][EmployeeReportSummaryDTOContractTypeEnum].
  static const values = <EmployeeReportSummaryDTOContractTypeEnum>[
    DETERMINATO,
    INDETERMINATO,
  ];

  static EmployeeReportSummaryDTOContractTypeEnum? fromJson(dynamic value) => EmployeeReportSummaryDTOContractTypeEnumTypeTransformer().decode(value);

  static List<EmployeeReportSummaryDTOContractTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmployeeReportSummaryDTOContractTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmployeeReportSummaryDTOContractTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmployeeReportSummaryDTOContractTypeEnum] to String,
/// and [decode] dynamic data back to [EmployeeReportSummaryDTOContractTypeEnum].
class EmployeeReportSummaryDTOContractTypeEnumTypeTransformer {
  factory EmployeeReportSummaryDTOContractTypeEnumTypeTransformer() => _instance ??= const EmployeeReportSummaryDTOContractTypeEnumTypeTransformer._();

  const EmployeeReportSummaryDTOContractTypeEnumTypeTransformer._();

  String encode(EmployeeReportSummaryDTOContractTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmployeeReportSummaryDTOContractTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmployeeReportSummaryDTOContractTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DETERMINATO': return EmployeeReportSummaryDTOContractTypeEnum.DETERMINATO;
        case r'INDETERMINATO': return EmployeeReportSummaryDTOContractTypeEnum.INDETERMINATO;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmployeeReportSummaryDTOContractTypeEnumTypeTransformer] instance.
  static EmployeeReportSummaryDTOContractTypeEnumTypeTransformer? _instance;
}


