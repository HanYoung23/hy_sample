import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hysample/data/models/auth_model.dart';
import 'package:hysample/data/repositories/auth_repository.dart';
import 'package:hysample/resources/routes/routes_name.dart';
import 'package:hysample/utils/utils.dart';

class AuthUseCase {
  final AuthRepository _repository = AuthRepository();

  Future<void> login() async {
    AuthModel authModel = await _repository.login();
    debugPrint("✅ authModel : ${authModel.id}");
    debugPrint("✅ authModel : ${authModel.name}");
    Utils.toastMessageCenter(
        "로그인 성공\nID : ${authModel.id}\nNAME : ${authModel.name}");
    Get.toNamed(RouteName.mainScreen);
  }
}
