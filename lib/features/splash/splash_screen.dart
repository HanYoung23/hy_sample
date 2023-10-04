import 'package:hysample/resources/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Get.toNamed(RouteName.authScreen);
        },
        child: Center(
          child: Text("splash_title".tr,
              style: Theme.of(context).textTheme.bodyLarge),
        ),
      ),
    );
  }
}
