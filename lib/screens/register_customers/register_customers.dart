import 'package:droan_insurence/size_config.dart';

import './components/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterCustomer extends StatelessWidget {
  static String routeName = '/newcustomer';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
