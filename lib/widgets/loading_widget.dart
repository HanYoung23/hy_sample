import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hysample/resources/colors/app_color.dart';

class LoadingWidget extends StatelessWidget {
  final bool isLoading;
  const LoadingWidget({
    super.key,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoading,
      child: Container(
        width: 1.sw,
        height: 1.sh,
        color: AppColor.blackColor.withOpacity(0.1),
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
