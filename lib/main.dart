import 'package:droan_insurence/screens/login_scree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DroanInsurenceApp());
}

class DroanInsurenceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
