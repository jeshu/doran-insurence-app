import 'package:droan_insurence/models/user_model.dart';
import 'package:droan_insurence/screens/customers/customers_list.dart';
import 'package:droan_insurence/size_config.dart';
import 'package:flutter/material.dart';
import './components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
