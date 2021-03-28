import './components/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterCustomer extends StatelessWidget {
  static String routeName = '/newcustomer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
