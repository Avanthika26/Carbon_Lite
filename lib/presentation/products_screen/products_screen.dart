import 'package:carbon_lite/core/app_export.dart';
import 'package:carbon_lite/widgets/app_bar/appbar_title_button.dart';
import 'package:carbon_lite/widgets/app_bar/appbar_title_searchview.dart';
import 'package:carbon_lite/widgets/app_bar/appbar_trailing_image.dart';
import 'package:carbon_lite/widgets/app_bar/custom_app_bar.dart';
import 'package:carbon_lite/widgets/custom_elevated_button.dart';
import 'package:carbon_lite/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProductsScreen extends StatelessWidget {
  ProductsScreen({Key? key}) : super(key: key);

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
                        image: AssetImage(ImageConstant.imgIphone1415Pro),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 50.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 1.v,
                              width: 6.h,
                              margin: EdgeInsets.only(left: 20.h),
                              decoration:
                                  BoxDecoration(color: appTheme.blueGray10001)),
                          Spacer(),
                          Padding(
                              padding: EdgeInsets.only(left: 20.h, right: 83.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtBUYNOW(context);
                                        },
                                        child: Container(
                                            width: 115.h,
                                            margin: EdgeInsets.only(
                                                top: 63.v, bottom: 70.v),
                                            padding: EdgeInsets.all(11.h),
                                            decoration: AppDecoration.fillRed
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder21),
                                            child: Text("BUY  NOW",
                                                style: theme
                                                    .textTheme.titleSmall))),
                                    Container(
                                        height: 176.v,
                                        width: 188.h,
                                        margin: EdgeInsets.only(left: 7.h),
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 58.h),
                                                      child: Text("126",
                                                          style: theme.textTheme
                                                              .headlineSmall))),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle33,
                                                  height: 147.v,
                                                  width: 188.h,
                                                  radius: BorderRadius.circular(
                                                      40.h),
                                                  alignment:
                                                      Alignment.topCenter,
                                                  onTap: () {
                                                    onTapImgImage(context);
                                                  })
                                            ]))
                                  ])),
                          SizedBox(height: 32.v),
                          _buildThirtySeven(context),
                          SizedBox(height: 10.v),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 65.h, right: 59.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgUser,
                                            height: 28.v,
                                            width: 16.h),
                                        Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text("12",
                                                style: theme
                                                    .textTheme.headlineSmall)),
                                        Spacer(),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgUser,
                                            height: 28.v,
                                            width: 16.h),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 17.h),
                                            child: Text("33",
                                                style: theme
                                                    .textTheme.headlineSmall))
                                      ]))),
                          SizedBox(height: 6.v),
                          _buildForty(context),
                          SizedBox(height: 17.v),
                          _buildGetDeals(context),
                          SizedBox(height: 77.v)
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 63.h,
        leading: Container(
            height: 45.adaptSize,
            width: 45.adaptSize,
            margin: EdgeInsets.only(left: 18.h, top: 13.v, bottom: 23.v),
            child: Stack(alignment: Alignment.topCenter, children: [
              CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  alignment: Alignment.center,
                  child: CustomImageView(imagePath: ImageConstant.imgLock)),
              CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  decoration: IconButtonStyleHelper.fillBlueGray,
                  alignment: Alignment.topCenter,
                  child: CustomImageView(imagePath: ImageConstant.imgLock))
            ])),
        title: Container(
            height: 35.v,
            width: 216.h,
            margin: EdgeInsets.only(left: 27.h),
            child: Stack(alignment: Alignment.topCenter, children: [
              AppbarTitleSearchview(
                  hintText: "Search for services..",
                  controller: searchController),
              AppbarTitleButton()
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCart,
              margin: EdgeInsets.only(left: 12.h, top: 21.v, right: 23.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.fromLTRB(17.h, 20.v, 43.h, 1.v))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildThirtySeven(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle29,
                  height: 168.v,
                  width: 188.h,
                  radius: BorderRadius.circular(40.h),
                  margin: EdgeInsets.only(right: 14.h),
                  onTap: () {
                    onTapImgImage1(context);
                  })),
          Expanded(
              child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle30,
                  height: 168.v,
                  width: 188.h,
                  radius: BorderRadius.circular(40.h),
                  margin: EdgeInsets.only(left: 14.h),
                  onTap: () {
                    onTapImgImage2(context);
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildBuyNow1(BuildContext context) {
    return CustomElevatedButton(
        width: 135.h,
        text: "BUY  NOW",
        onPressed: () {
          onTapBuyNow1(context);
        });
  }

  /// Section Widget
  Widget _buildBuyNow2(BuildContext context) {
    return CustomElevatedButton(
        width: 135.h,
        text: "BUY  NOW",
        onPressed: () {
          onTapBuyNow2(context);
        });
  }

  /// Section Widget
  Widget _buildForty(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 38.h, right: 12.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [_buildBuyNow1(context), _buildBuyNow2(context)])));
  }

  /// Section Widget
  Widget _buildGetDeals(BuildContext context) {
    return CustomElevatedButton(
        height: 56.v,
        width: 240.h,
        text: "GET DEALS",
        buttonStyle: CustomButtonStyles.fillYellowA,
        buttonTextStyle: CustomTextStyles.headlineMedium26,
        onPressed: () {
          onTapGetDeals(context);
        },
        alignment: Alignment.center);
  }

  /// Navigates to the successScreen when the action is triggered.
  onTapTxtBUYNOW(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.successScreen);
  }

  /// Navigates to the successScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.successScreen);
  }

  /// Navigates to the successScreen when the action is triggered.
  onTapImgImage1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.successScreen);
  }

  /// Navigates to the successScreen when the action is triggered.
  onTapImgImage2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.successScreen);
  }

  /// Navigates to the successScreen when the action is triggered.
  onTapBuyNow1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.successScreen);
  }

  /// Navigates to the successScreen when the action is triggered.
  onTapBuyNow2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.successScreen);
  }

  /// Navigates to the dealsScreen when the action is triggered.
  onTapGetDeals(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dealsScreen);
  }
}
