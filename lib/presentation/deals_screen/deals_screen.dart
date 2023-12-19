import 'package:carbon_lite/core/app_export.dart';
import 'package:carbon_lite/widgets/app_bar/appbar_title_button.dart';
import 'package:carbon_lite/widgets/app_bar/appbar_title_searchview.dart';
import 'package:carbon_lite/widgets/app_bar/appbar_trailing_image.dart';
import 'package:carbon_lite/widgets/app_bar/custom_app_bar.dart';
import 'package:carbon_lite/widgets/custom_elevated_button.dart';
import 'package:carbon_lite/widgets/custom_icon_button.dart';
import 'package:carbon_lite/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DealsScreen extends StatelessWidget {
  DealsScreen({Key? key}) : super(key: key);

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
                    height: 851.v,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 75.v),
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      _buildFifteenStack(context),
                      _buildTenColumn(context)
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
  Widget _buildFifteenStack(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 349.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.topCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle35,
                  height: 349.v,
                  width: 430.h,
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: EdgeInsets.only(top: 19.v),
                      child: Text("DEAL OF THE DAY ",
                          style: theme.textTheme.headlineMedium)))
            ])));
  }

  /// Section Widget
  Widget _buildTenColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(bottom: 5.v),
            padding: EdgeInsets.all(19.h),
            decoration: AppDecoration.fillWhiteA,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 43.v),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text("LENOVO LAPTOP",
                          style: CustomTextStyles.headlineMediumRoboto)),
                  Container(
                      width: 345.h,
                      margin: EdgeInsets.only(left: 3.h, right: 44.h),
                      child: Text(
                          "Lenovo  IdeaPad Gaming 3 Laptop Intel Core i5 11th Gen 15.6\"",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles
                              .bodyLargeSansSerifCollectionPrimary
                              .copyWith(height: 1.37))),
                  SizedBox(height: 3.v),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: CustomRatingBar(initialRating: 3)),
                  SizedBox(height: 4.v),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 33.v),
                                child: Text("33",
                                    style:
                                        CustomTextStyles.displaySmallRoboto)),
                            CustomElevatedButton(
                                width: 135.h,
                                text: "BUY  NOW",
                                margin: EdgeInsets.only(top: 26.v),
                                onPressed: () {
                                  onTapBUYNOW(context);
                                })
                          ]))
                ])));
  }

  /// Navigates to the successScreen when the action is triggered.
  onTapBUYNOW(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.successScreen);
  }
}
