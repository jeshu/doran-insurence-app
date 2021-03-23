import 'package:droan_insurence/constants.dart';
import 'package:droan_insurence/routes.dart';
import 'package:droan_insurence/screens/splash/splash_screen.dart';
import 'package:droan_insurence/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DroanInsurenceApp());
}

class DroanInsurenceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppName,
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
