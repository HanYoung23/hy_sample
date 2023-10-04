import 'package:get/get.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;

  void changeIsLoading(bool loading) {
    isLoading.value = loading;
  }
}
