import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          "splash_title": "Splash",
          //
          "logo": "logo",
          "kakao_login": "kakao login",
          "apple_login": "apple login",
          //
          "main": "main screen",
          //
          "internet_exception":
              "We're unable to process your request,\nplease try again",
          "retry": "retry",
        },
        'ko_KR': {
          "splash_title": "스플래쉬 (클릭)",
          //
          "logo": "로고",
          "kakao_login": "kakao login",
          "apple_login": "apple login",
          //
          "main": "메인화면",
          //
          "internet_exception": "인터넷 접속이 불안정합니다\n네트워크 환경을 확인후 다시 시도해주세요",
          "retry": "다시 시도",
        },
      };
}
