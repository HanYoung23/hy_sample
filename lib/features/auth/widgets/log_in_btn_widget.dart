import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hysample/resources/colors/app_color.dart';
import 'package:hysample/resources/images/image_assets.dart';
import 'package:hysample/resources/sizes/app_size.dart';

enum LogInType {
  // ignore: constant_identifier_names
  KAKAO,
  // ignore: constant_identifier_names
  APPLE,
}

class LogInBtnWidget extends StatelessWidget {
  final LogInType logInType;

  const LogInBtnWidget({Key? key, required this.logInType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final btnColor = _getBtnColor();
    final btnTextColor = _getBtnTextColor();
    final btnImage = _getBtnImage();
    final btnTitle = _getBtnTitle();

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: AppSize.marginVert,
        horizontal: AppSize.marginHori,
      ),
      padding: EdgeInsets.symmetric(
        vertical: AppSize.paddingVert,
        horizontal: AppSize.paddingHori,
      ),
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(AppSize.radiusBtn),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            btnImage,
            width: AppSize.loginBtnIcon,
          ),
          SizedBox(width: AppSize.gapVert),
          Text(
            btnTitle.tr,
            style: TextStyle(color: btnTextColor),
          ),
          SizedBox(width: AppSize.gapVert),
          Image.asset(
            btnImage,
            width: AppSize.loginBtnIcon,
            color: AppColor.transparent,
          ),
        ],
      ),
    );
  }

  Color _getBtnColor() {
    switch (logInType) {
      case LogInType.KAKAO:
        return AppColor.kakaoBGColor;
      case LogInType.APPLE:
        return AppColor.whiteColor;
      default:
        throw Exception('❗️ logInType: $logInType');
    }
  }

  Color _getBtnTextColor() {
    switch (logInType) {
      case LogInType.KAKAO:
        return AppColor.kakaoTextColor;
      case LogInType.APPLE:
        return AppColor.blackTextColor;
      default:
        throw Exception('❗️ logInType: $logInType');
    }
  }

  String _getBtnImage() {
    switch (logInType) {
      case LogInType.KAKAO:
        return AppImage.kakaoLogo;
      case LogInType.APPLE:
        return AppImage.appleLogo;
      default:
        throw Exception('❗️ logInType: $logInType');
    }
  }

  String _getBtnTitle() {
    switch (logInType) {
      case LogInType.KAKAO:
        return "kakao_login";
      case LogInType.APPLE:
        return "apple_login";
      default:
        throw Exception('❗️ logInType: $logInType');
    }
  }
}
