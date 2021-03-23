import 'package:flutter/material.dart';
import './components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/signin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
