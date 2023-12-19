import 'package:carbon_lite/core/app_export.dart';
import 'package:carbon_lite/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleButton extends StatelessWidget {
  AppbarTitleButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomOutlinedButton(
          width: 216.h,
          text: "Search for services..",
          rightIcon: Container(
            margin: EdgeInsets.only(left: 16.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgRewind,
              height: 24.v,
              width: 22.h,
            ),
          ),
        ),
      ),
    );
  }
}
