import 'package:mockito/mockito.dart';
import 'package:ventipro/api/restaurant_client/lib/api.dart';
import 'package:http/src/response.dart';

class MockRestaurantControllerApi extends Mock implements RestaurantControllerApi {

  Future<void> _mockLogin() async {
    final mockApi = MockRestaurantControllerApi();

    // Mock a successful login response
    //when(mockApi.loginFromMobileDeviceWithHttpInfo(
    //    any<String>(), any, any, any
    //)).thenAnswer((_) async {
    //  return Response('{"status": "success"}', 202); // Mocked 202 response
    //});

    // You can then test by passing this `mockApi` to your `LoginPage` widget.
  }

}
