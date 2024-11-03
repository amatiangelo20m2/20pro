# ventimetri_api.model.OrderDTO

## Load the model package
```dart
import 'package:ventimetri_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderId** | **int** |  | [optional] 
**createdByUser** | **String** |  | [optional] 
**userCode** | **String** |  | [optional] 
**createdBranchCode** | **String** |  | [optional] 
**createdBranchName** | **String** |  | [optional] 
**insertedDate** | [**DateTime**](DateTime.md) |  | [optional] 
**incomingDate** | [**DateTime**](DateTime.md) |  | [optional] 
**preferredReceivingTime** | [**LocalTime**](LocalTime.md) |  | [optional] 
**orderStatus** | **String** |  | [optional] 
**orderTarget** | **String** |  | [optional] 
**codeTarget** | **String** |  | [optional] 
**nameTarget** | **String** |  | [optional] 
**orderItemDtoList** | [**Set<OrderItemDto>**](OrderItemDto.md) |  | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


