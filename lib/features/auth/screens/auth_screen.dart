import 'package:hysample/features/auth/controllers/auth_controller.dart';
import 'package:hysample/features/auth/usecases/auth_usecase.dart';
import 'package:hysample/features/auth/widgets/log_in_btn_widget.dart';
import 'package:hysample/resources/colors/app_color.dart';
import 'package:hysample/resources/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hysample/widgets/loading_widget.dart';

class AuthScreen extends StatelessWidget {
  final AuthController authController;
  final AuthUseCase authUseCase;

  const AuthScreen(
      {Key? key, required this.authController, required this.authUseCase})
      : super(key: key);

  void logIn() {
    authController.changeIsLoading(true);
    authUseCase.login();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: AppColor.blackColor,
            child: Column(
              children: [
                const Spacer(flex: 4),
                Text(
                  "logo".tr,
                  style: AppThemes.appTextTheme.bodyLarge!
                      .copyWith(color: AppColor.whiteTextColor),
                ),
                const Spacer(flex: 4),
                InkWell(
                  onTap: logIn,
                  child: const LogInBtnWidget(logInType: LogInType.KAKAO),
                ),
                InkWell(
                    onTap: logIn,
                    child: const LogInBtnWidget(logInType: LogInType.APPLE)),
                const Spacer(),
                SizedBox(height: MediaQuery.of(context).padding.bottom),
              ],
            ),
          ),
          Obx(() {
            return LoadingWidget(isLoading: authController.isLoading.value);
          }),
        ],
      ),
    );
  }
}
