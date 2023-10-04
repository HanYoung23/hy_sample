import 'package:hysample/resources/colors/app_color.dart';
import 'package:hysample/resources/components/bottom_btn_widget.dart';
import 'package:hysample/resources/fonts/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InternetExceptionWidget extends StatelessWidget {
  final Function callback;
  const InternetExceptionWidget({super.key, required this.callback});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          const Spacer(),
          const Icon(
            Icons.cloud_off_rounded,
            size: 80,
            color: AppColor.greyColor,
          ),
          const SizedBox(height: 50),
          Text(
            "internet_exception".tr,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: AppFonts.nanumGothicBold,
              color: AppColor.greyColor,
            ),
          ),
          const Spacer(),
          BottomBtnWidget(
            btnTitle: "retry".tr,
            callback: callback,
          ),
          const SizedBox(height: 20),
          SizedBox(height: MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }
}
