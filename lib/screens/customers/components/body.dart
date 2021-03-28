import 'package:droan_insurence/screens/register_customers/register_customers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(
            'Customers',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
