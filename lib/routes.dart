import 'package:droan_insurence/screens/auth/auth.dart';
import 'package:droan_insurence/screens/customers/customers_list.dart';
import 'package:droan_insurence/screens/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  CustomerList.routeName: (context) => CustomerList(),
};
