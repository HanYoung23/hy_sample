import 'package:hysample/resources/colors/app_color.dart';
import 'package:hysample/resources/fonts/app_fonts.dart';
import 'package:flutter/material.dart';

class BottomBtnWidget extends StatelessWidget {
  const BottomBtnWidget({
    super.key,
    required this.btnTitle,
    required this.callback,
    this.width,
  });
  final String btnTitle;
  final Function callback;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback(),
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: AppColor.blackColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          btnTitle,
          style: const TextStyle(
            fontSize: 20,
            fontFamily: AppFonts.nanumGothicBold,
            color: AppColor.whiteTextColor,
          ),
        ),
      ),
    );
  }
}
