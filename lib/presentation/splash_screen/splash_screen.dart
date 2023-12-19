import 'package:carbon_lite/core/app_export.dart';
import 'package:carbon_lite/widgets/app_bar/appbar_title_button.dart';
import 'package:carbon_lite/widgets/app_bar/appbar_title_searchview.dart';
import 'package:carbon_lite/widgets/app_bar/appbar_trailing_image.dart';
import 'package:carbon_lite/widgets/app_bar/custom_app_bar.dart';
import 'package:carbon_lite/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key})
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
          child: SizedBox(
            height: 851.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 27.h,
                      vertical: 198.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup18,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 365.h,
                          margin: EdgeInsets.only(left: 9.h),
                          child: Text(
                            " SHOP ELECTRONICS WITH LOW CARBON EMISSIONS",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(height: 50.v),
                        Container(
                          width: 161.h,
                          margin: EdgeInsets.only(left: 23.h),
                          child: Text(
                            "EXPLORE NOW ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.displaySmall,
                          ),
                        ),
                        SizedBox(height: 22.v),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 332.h,
                    margin: EdgeInsets.only(
                      left: 37.h,
                      top: 83.v,
                    ),
                    child: Text(
                      "CARBON LITE",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.generaWhiteA700,
                    ),
                  ),
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
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCart,
          margin: EdgeInsets.only(
            left: 12.h,
            top: 21.v,
            right: 23.h,
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
