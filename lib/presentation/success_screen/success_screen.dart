import 'package:carbon_lite/core/app_export.dart';
import 'package:carbon_lite/widgets/app_bar/appbar_title_button.dart';
import 'package:carbon_lite/widgets/app_bar/appbar_title_searchview.dart';
import 'package:carbon_lite/widgets/app_bar/appbar_trailing_image.dart';
import 'package:carbon_lite/widgets/app_bar/custom_app_bar.dart';
import 'package:carbon_lite/widgets/custom_elevated_button.dart';
import 'package:carbon_lite/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  SuccessScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgIphone1415Pro,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              top: 32.v,
              bottom: 5.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 40.v,
            ),
            decoration: AppDecoration.fillWhiteA,
            child: Column(
              children: [
                SizedBox(height: 21.v),
                SizedBox(
                  width: 235.h,
                  child: Text(
                    "ORDER PLACED SUCCESSFULLY !",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineMedium,
                  ),
                ),
                SizedBox(height: 43.v),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: appTheme.greenA70001,
                      width: 8.h,
                    ),
                    borderRadius: BorderRadiusStyle.roundedBorder137,
                  ),
                  child: Container(
                    height: 275.adaptSize,
                    width: 275.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 73.h,
                      vertical: 84.v,
                    ),
                    decoration: AppDecoration.outlineGreenA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder137,
                    ),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgBookmark,
                          height: 43.v,
                          width: 53.h,
                          alignment: Alignment.bottomLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 86.v,
                          width: 64.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 13.h),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 23.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 255.h,
                    margin: EdgeInsets.only(
                      left: 82.h,
                      right: 49.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 21.h,
                      vertical: 12.v,
                    ),
                    decoration: AppDecoration.fillSecondaryContainer,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        Container(
                          width: 204.h,
                          margin: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "YAYY! YOU JUST REDUCED CARBON EMISSIONS BY 5%",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleLargeWhiteA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 49.v),
                CustomElevatedButton(
                  height: 77.v,
                  text: "SHOP MORE REDUCE MORE EMISSIONS",
                  margin: EdgeInsets.only(left: 7.h),
                  buttonStyle: CustomButtonStyles.fillYellowATL38,
                  buttonTextStyle: theme.textTheme.titleLarge!,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 63.h,
      leading: Container(
        height: 45.adaptSize,
        width: 45.adaptSize,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 13.v,
          bottom: 23.v,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomIconButton(
              height: 45.adaptSize,
              width: 45.adaptSize,
              alignment: Alignment.center,
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
              ),
            ),
            CustomIconButton(
              height: 45.adaptSize,
              width: 45.adaptSize,
              decoration: IconButtonStyleHelper.fillBlueGray,
              alignment: Alignment.topCenter,
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
              ),
            ),
          ],
        ),
      ),
      title: Container(
        height: 35.v,
        width: 216.h,
        margin: EdgeInsets.only(left: 27.h),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            AppbarTitleSearchview(
              hintText: "Search for services..",
              controller: searchController,
            ),
            AppbarTitleButton(),
          ],
        ),
      ),
      actions: [
        Container(
          height: 37.v,
          width: 42.h,
          margin: EdgeInsets.only(
            left: 12.h,
            top: 21.v,
            right: 23.h,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCart,
                height: 37.v,
                width: 42.h,
                alignment: Alignment.bottomCenter,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCart,
                height: 37.v,
                width: 42.h,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.fromLTRB(17.h, 20.v, 43.h, 1.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }
}
