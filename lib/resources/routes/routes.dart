import 'package:get/get.dart';
import 'package:hysample/features/auth/controllers/auth_controller.dart';
import 'package:hysample/features/auth/screens/auth_screen.dart';
import 'package:hysample/features/auth/usecases/auth_usecase.dart';
import 'package:hysample/features/main/main_screen.dart';
import 'package:hysample/features/splash/splash_screen.dart';
import 'package:hysample/resources/routes/routes_name.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(name: RouteName.splashScreen, page: () => const SplashScreen()),
        GetPage(
            name: RouteName.authScreen,
            page: () => AuthScreen(
                  authController: Get.put(AuthController()),
                  authUseCase: AuthUseCase(),
                )),
        GetPage(name: RouteName.mainScreen, page: () => const MainScreen()),
      ];
}
