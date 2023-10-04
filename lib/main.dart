import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hysample/features/splash/splash_screen.dart';
import 'package:hysample/resources/duration/app_duration.dart';
import 'package:hysample/resources/getx_localization/languages.dart';
import 'package:hysample/resources/routes/routes.dart';
import 'package:hysample/resources/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        //
        theme: ThemeData(
          // primarySwatch: Colors.black,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'NanumGothic',
          appBarTheme: AppThemes.appBarTheme,
          textTheme: AppThemes.appTextTheme,
          brightness: Brightness.light,
        ),
        //
        defaultTransition: Transition.fade,
        transitionDuration:
            const Duration(milliseconds: AppDuration.splashDelay),
        //
        translations: Languages(),
        locale: const Locale('ko', 'KR'),
        fallbackLocale: const Locale('ko', 'KR'),
        //
        home: const SplashScreen(),
        //
        getPages: AppRoutes.appRoutes(),
      ),
    );
  }
}
