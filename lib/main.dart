import 'package:droan_insurence/constants.dart';
import 'package:droan_insurence/models/user_model.dart';
import 'package:droan_insurence/routes.dart';
import 'package:droan_insurence/screens/register_customers/register_customers.dart';
import 'package:droan_insurence/screens/splash/splash_screen.dart';
import 'package:droan_insurence/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (create) => UserModel(),
          lazy: true,
        )
      ],
      child: DroanInsurenceApp(),
    ),
  );
}

class DroanInsurenceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppName,
      theme: theme(),
      initialRoute: RegisterCustomer.routeName,
      routes: routes,
    );
  }
}
