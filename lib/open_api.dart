import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    additionalProperties:
    AdditionalProperties(pubName: 'ventimetri_api', pubAuthor: 'Angelo Amati'),
    inputSpecFile: 'lib/json/ventimetri_service.yaml',
    generatorName: Generator.dart,
    outputDirectory: 'lib/api/client')
class OpenApi extends OpenapiGeneratorConfig {}

@Openapi(
    additionalProperties:
    AdditionalProperties(pubName: 'ventimetri_api_restaurant', pubAuthor: 'Angelo Amati'),
    inputSpecFile: 'lib/json/restaurant_service.yaml',
    generatorName: Generator.dart,
    outputDirectory: 'lib/api/restaurant_client')
class OpenApiRestaurantClient extends OpenapiGeneratorConfig {}
///flutter pub run build_runner build --delete-conflicting-outputs lancia questo comando per generare il codice client per il servizio