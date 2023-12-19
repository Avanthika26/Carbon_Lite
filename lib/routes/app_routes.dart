import 'package:flutter/material.dart';
import 'package:carbon_lite/presentation/splash_screen/splash_screen.dart';
import 'package:carbon_lite/presentation/welcome_screen/welcome_screen.dart';
import 'package:carbon_lite/presentation/products_screen/products_screen.dart';
import 'package:carbon_lite/presentation/deals_screen/deals_screen.dart';
import 'package:carbon_lite/presentation/success_screen/success_screen.dart';
import 'package:carbon_lite/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String productsScreen = '/products_screen';

  static const String dealsScreen = '/deals_screen';

  static const String successScreen = '/success_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    productsScreen: (context) => ProductsScreen(),
    dealsScreen: (context) => DealsScreen(),
    successScreen: (context) => SuccessScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
