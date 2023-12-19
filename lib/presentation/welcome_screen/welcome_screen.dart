import 'package:carbon_lite/core/app_export.dart';
import 'package:carbon_lite/widgets/custom_elevated_button.dart';
import 'package:carbon_lite/widgets/custom_outlined_button.dart';
import 'package:carbon_lite/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  TextEditingController nameFieldController = TextEditingController();

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgIphone1415Pro),
                        fit: BoxFit.cover)),
                child: Form(
                    key: _formKey,
                    child: SizedBox(
                        width: double.maxFinite,
                        child: Column(children: [
                          Spacer(flex: 45),
                          Text("WELCOME !",
                              style: theme.textTheme.displayLarge),
                          Spacer(flex: 54),
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 38.h, vertical: 57.v),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(ImageConstant.imgGroup3),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 101.v),
                                    _buildNameField(context),
                                    SizedBox(height: 22.v),
                                    _buildEmailField(context),
                                    SizedBox(height: 20.v),
                                    _buildPasswordField(context),
                                    SizedBox(height: 28.v),
                                    _buildSignUpButton(context),
                                    SizedBox(height: 22.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.h, right: 23.h),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 14.v, bottom: 4.v),
                                                  child: SizedBox(
                                                      width: 137.h,
                                                      child: Divider())),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 17.h),
                                                  child: Text("or",
                                                      style: CustomTextStyles
                                                          .bodyLargePrimary)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 14.v, bottom: 4.v),
                                                  child: SizedBox(
                                                      width: 151.h,
                                                      child: Divider(
                                                          indent: 14.h)))
                                            ])),
                                    SizedBox(height: 11.v),
                                    _buildLogInButton(context)
                                  ]))
                        ]))))));
  }

  /// Section Widget
  Widget _buildNameField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 31.h),
        child: CustomTextFormField(
            controller: nameFieldController,
            hintText: "Name ",
            contentPadding: EdgeInsets.symmetric(horizontal: 18.h)));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 31.h),
        child: CustomTextFormField(
            controller: emailFieldController,
            hintText: "Email",
            textInputType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.symmetric(horizontal: 19.h)));
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 31.h),
        child: CustomTextFormField(
            controller: passwordFieldController,
            hintText: "Password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 19.h)));
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        height: 48.v,
        text: "Sign Up",
        margin: EdgeInsets.only(left: 8.h, right: 24.h),
        buttonStyle: CustomButtonStyles.fillBlue,
        buttonTextStyle: CustomTextStyles.titleMediumGenera,
        onPressed: () {
          onTapSignUpButton(context);
        });
  }

  /// Section Widget
  Widget _buildLogInButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 48.v,
        text: "Log In",
        margin: EdgeInsets.only(right: 31.h),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
        buttonTextStyle: CustomTextStyles.titleMediumGeneraPrimary,
        onPressed: () {
          onTapLogInButton(context);
        });
  }

  /// Navigates to the productsScreen when the action is triggered.
  onTapSignUpButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productsScreen);
  }

  /// Navigates to the productsScreen when the action is triggered.
  onTapLogInButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productsScreen);
  }
}
