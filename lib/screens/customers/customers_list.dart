import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerList extends StatelessWidget {
  static String routeName = '/customers';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Text('Customer list....'),
        ),
      ),
    );
  }
}
