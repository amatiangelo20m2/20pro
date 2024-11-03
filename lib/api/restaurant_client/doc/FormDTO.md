# ventimetri_api_restaurant.model.FormDTO

## Load the model package
```dart
import 'package:ventimetri_api_restaurant/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**formId** | **int** |  | [optional] 
**formCode** | **String** |  | [optional] 
**formName** | **String** |  | [optional] 
**outputNameForCustomer** | **String** |  | [optional] 
**branchCode** | **String** |  | [optional] 
**branchName** | **String** |  | [optional] 
**branchAddress** | **String** |  | [optional] 
**redirectPage** | **String** |  | [optional] 
**creationDate** | [**DateTime**](DateTime.md) |  | [optional] 
**formType** | **String** |  | [optional] 
**formStatus** | **String** |  | [optional] 
**logo** | **List<String>** |  | [optional] [default to const []]
**regularOpeningHours** | [**List<OpeningHoursDTO>**](OpeningHoursDTO.md) |  | [optional] [default to const []]
**specialDays** | [**List<SpecialDayDTO>**](SpecialDayDTO.md) |  | [optional] [default to const []]
**holidays** | [**List<HolidaysDTO>**](HolidaysDTO.md) |  | [optional] [default to const []]
**daylyTimeWorkingRange** | [**TimeRange**](TimeRange.md) |  | [optional] 
**nightTimeWorkingRange** | [**TimeRange**](TimeRange.md) |  | [optional] 
**cutterTimeForRanges** | **int** |  | [optional] 
**maxGuests** | **int** |  | [optional] 
**maxTableGuestNumber** | **int** |  | [optional] 
**dogsAreAccepted** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


