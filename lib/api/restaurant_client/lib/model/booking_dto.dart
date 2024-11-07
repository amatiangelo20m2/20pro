//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BookingDTO {
  /// Returns a new [BookingDTO] instance.
  BookingDTO({
    this.bookingId,
    this.formCode,
    this.branchCode,
    this.bookingCode,
    this.bookingDate,
    this.timeSlot,
    this.numGuests,
    this.status,
    this.specialRequests,
    this.customer,
    this.createdAt,
    this.timeWaitingFastQueueMinutes,
    this.bookingSource,
    this.comingWithDogs,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bookingId;

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
  String? branchCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bookingCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? bookingDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TimeSlot? timeSlot;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numGuests;

  BookingDTOStatusEnum? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? specialRequests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CustomerDTO? customer;

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
  int? timeWaitingFastQueueMinutes;

  BookingDTOBookingSourceEnum? bookingSource;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? comingWithDogs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BookingDTO &&
    other.bookingId == bookingId &&
    other.formCode == formCode &&
    other.branchCode == branchCode &&
    other.bookingCode == bookingCode &&
    other.bookingDate == bookingDate &&
    other.timeSlot == timeSlot &&
    other.numGuests == numGuests &&
    other.status == status &&
    other.specialRequests == specialRequests &&
    other.customer == customer &&
    other.createdAt == createdAt &&
    other.timeWaitingFastQueueMinutes == timeWaitingFastQueueMinutes &&
    other.bookingSource == bookingSource &&
    other.comingWithDogs == comingWithDogs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bookingId == null ? 0 : bookingId!.hashCode) +
    (formCode == null ? 0 : formCode!.hashCode) +
    (branchCode == null ? 0 : branchCode!.hashCode) +
    (bookingCode == null ? 0 : bookingCode!.hashCode) +
    (bookingDate == null ? 0 : bookingDate!.hashCode) +
    (timeSlot == null ? 0 : timeSlot!.hashCode) +
    (numGuests == null ? 0 : numGuests!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (specialRequests == null ? 0 : specialRequests!.hashCode) +
    (customer == null ? 0 : customer!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (timeWaitingFastQueueMinutes == null ? 0 : timeWaitingFastQueueMinutes!.hashCode) +
    (bookingSource == null ? 0 : bookingSource!.hashCode) +
    (comingWithDogs == null ? 0 : comingWithDogs!.hashCode);

  @override
  String toString() => 'BookingDTO[bookingId=$bookingId, formCode=$formCode, branchCode=$branchCode, bookingCode=$bookingCode, bookingDate=$bookingDate, timeSlot=$timeSlot, numGuests=$numGuests, status=$status, specialRequests=$specialRequests, customer=$customer, createdAt=$createdAt, timeWaitingFastQueueMinutes=$timeWaitingFastQueueMinutes, bookingSource=$bookingSource, comingWithDogs=$comingWithDogs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bookingId != null) {
      json[r'bookingId'] = this.bookingId;
    } else {
      json[r'bookingId'] = null;
    }
    if (this.formCode != null) {
      json[r'formCode'] = this.formCode;
    } else {
      json[r'formCode'] = null;
    }
    if (this.branchCode != null) {
      json[r'branchCode'] = this.branchCode;
    } else {
      json[r'branchCode'] = null;
    }
    if (this.bookingCode != null) {
      json[r'bookingCode'] = this.bookingCode;
    } else {
      json[r'bookingCode'] = null;
    }
    if (this.bookingDate != null) {
      json[r'bookingDate'] = _dateFormatter.format(this.bookingDate!.toUtc());
    } else {
      json[r'bookingDate'] = null;
    }
    if (this.timeSlot != null) {
      json[r'timeSlot'] = this.timeSlot;
    } else {
      json[r'timeSlot'] = null;
    }
    if (this.numGuests != null) {
      json[r'numGuests'] = this.numGuests;
    } else {
      json[r'numGuests'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.specialRequests != null) {
      json[r'specialRequests'] = this.specialRequests;
    } else {
      json[r'specialRequests'] = null;
    }
    if (this.customer != null) {
      json[r'customer'] = this.customer;
    } else {
      json[r'customer'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.timeWaitingFastQueueMinutes != null) {
      json[r'timeWaitingFastQueueMinutes'] = this.timeWaitingFastQueueMinutes;
    } else {
      json[r'timeWaitingFastQueueMinutes'] = null;
    }
    if (this.bookingSource != null) {
      json[r'bookingSource'] = this.bookingSource;
    } else {
      json[r'bookingSource'] = null;
    }
    if (this.comingWithDogs != null) {
      json[r'comingWithDogs'] = this.comingWithDogs;
    } else {
      json[r'comingWithDogs'] = null;
    }
    return json;
  }

  /// Returns a new [BookingDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BookingDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BookingDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BookingDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BookingDTO(
        bookingId: mapValueOfType<int>(json, r'bookingId'),
        formCode: mapValueOfType<String>(json, r'formCode'),
        branchCode: mapValueOfType<String>(json, r'branchCode'),
        bookingCode: mapValueOfType<String>(json, r'bookingCode'),
        bookingDate: mapDateTime(json, r'bookingDate', r''),
        timeSlot: TimeSlot.fromJson(json[r'timeSlot']),
        numGuests: mapValueOfType<int>(json, r'numGuests'),
        status: BookingDTOStatusEnum.fromJson(json[r'status']),
        specialRequests: mapValueOfType<String>(json, r'specialRequests'),
        customer: CustomerDTO.fromJson(json[r'customer']),
        createdAt: mapDateTime(json, r'createdAt', r''),
        timeWaitingFastQueueMinutes: mapValueOfType<int>(json, r'timeWaitingFastQueueMinutes'),
        bookingSource: BookingDTOBookingSourceEnum.fromJson(json[r'bookingSource']),
        comingWithDogs: mapValueOfType<bool>(json, r'comingWithDogs'),
      );
    }
    return null;
  }

  static List<BookingDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BookingDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BookingDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BookingDTO> mapFromJson(dynamic json) {
    final map = <String, BookingDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BookingDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BookingDTO-objects as value to a dart map
  static Map<String, List<BookingDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BookingDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BookingDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class BookingDTOStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const BookingDTOStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const IN_ATTESA = BookingDTOStatusEnum._(r'IN_ATTESA');
  static const MODIFICATO_DA_UTENTE = BookingDTOStatusEnum._(r'MODIFICATO_DA_UTENTE');
  static const CONFERMATO = BookingDTOStatusEnum._(r'CONFERMATO');
  static const ARRIVATO = BookingDTOStatusEnum._(r'ARRIVATO');
  static const NON_ARRIVATO = BookingDTOStatusEnum._(r'NON_ARRIVATO');
  static const RIFIUTATO = BookingDTOStatusEnum._(r'RIFIUTATO');
  static const LISTA_ATTESA = BookingDTOStatusEnum._(r'LISTA_ATTESA');
  static const AVVISATO_LISTA_ATTESA = BookingDTOStatusEnum._(r'AVVISATO_LISTA_ATTESA');
  static const ELIMINATO = BookingDTOStatusEnum._(r'ELIMINATO');

  /// List of all possible values in this [enum][BookingDTOStatusEnum].
  static const values = <BookingDTOStatusEnum>[
    IN_ATTESA,
    MODIFICATO_DA_UTENTE,
    CONFERMATO,
    ARRIVATO,
    NON_ARRIVATO,
    RIFIUTATO,
    LISTA_ATTESA,
    AVVISATO_LISTA_ATTESA,
    ELIMINATO,
  ];

  static BookingDTOStatusEnum? fromJson(dynamic value) => BookingDTOStatusEnumTypeTransformer().decode(value);

  static List<BookingDTOStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BookingDTOStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BookingDTOStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BookingDTOStatusEnum] to String,
/// and [decode] dynamic data back to [BookingDTOStatusEnum].
class BookingDTOStatusEnumTypeTransformer {
  factory BookingDTOStatusEnumTypeTransformer() => _instance ??= const BookingDTOStatusEnumTypeTransformer._();

  const BookingDTOStatusEnumTypeTransformer._();

  String encode(BookingDTOStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BookingDTOStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BookingDTOStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'IN_ATTESA': return BookingDTOStatusEnum.IN_ATTESA;
        case r'MODIFICATO_DA_UTENTE': return BookingDTOStatusEnum.MODIFICATO_DA_UTENTE;
        case r'CONFERMATO': return BookingDTOStatusEnum.CONFERMATO;
        case r'ARRIVATO': return BookingDTOStatusEnum.ARRIVATO;
        case r'NON_ARRIVATO': return BookingDTOStatusEnum.NON_ARRIVATO;
        case r'RIFIUTATO': return BookingDTOStatusEnum.RIFIUTATO;
        case r'LISTA_ATTESA': return BookingDTOStatusEnum.LISTA_ATTESA;
        case r'AVVISATO_LISTA_ATTESA': return BookingDTOStatusEnum.AVVISATO_LISTA_ATTESA;
        case r'ELIMINATO': return BookingDTOStatusEnum.ELIMINATO;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BookingDTOStatusEnumTypeTransformer] instance.
  static BookingDTOStatusEnumTypeTransformer? _instance;
}



class BookingDTOBookingSourceEnum {
  /// Instantiate a new enum with the provided [value].
  const BookingDTOBookingSourceEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const WEB = BookingDTOBookingSourceEnum._(r'WEB');
  static const APP_CUSTOMER = BookingDTOBookingSourceEnum._(r'APP_CUSTOMER');
  static const APP = BookingDTOBookingSourceEnum._(r'APP');

  /// List of all possible values in this [enum][BookingDTOBookingSourceEnum].
  static const values = <BookingDTOBookingSourceEnum>[
    WEB,
    APP_CUSTOMER,
    APP,
  ];

  static BookingDTOBookingSourceEnum? fromJson(dynamic value) => BookingDTOBookingSourceEnumTypeTransformer().decode(value);

  static List<BookingDTOBookingSourceEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BookingDTOBookingSourceEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BookingDTOBookingSourceEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BookingDTOBookingSourceEnum] to String,
/// and [decode] dynamic data back to [BookingDTOBookingSourceEnum].
class BookingDTOBookingSourceEnumTypeTransformer {
  factory BookingDTOBookingSourceEnumTypeTransformer() => _instance ??= const BookingDTOBookingSourceEnumTypeTransformer._();

  const BookingDTOBookingSourceEnumTypeTransformer._();

  String encode(BookingDTOBookingSourceEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BookingDTOBookingSourceEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BookingDTOBookingSourceEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WEB': return BookingDTOBookingSourceEnum.WEB;
        case r'APP_CUSTOMER': return BookingDTOBookingSourceEnum.APP_CUSTOMER;
        case r'APP': return BookingDTOBookingSourceEnum.APP;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BookingDTOBookingSourceEnumTypeTransformer] instance.
  static BookingDTOBookingSourceEnumTypeTransformer? _instance;
}


