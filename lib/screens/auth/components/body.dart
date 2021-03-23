import 'package:droan_insurence/constants.dart';
import './sign_in_form.dart';
import 'package:droan_insurence/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 285,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                  vertical: getProportionateScreenHeight(40)),
              child: Text(
                kAppName,
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    .copyWith(color: Colors.white),
              ),
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            ),
          ),
          Positioned(
            top: getProportionateScreenHeight(200),
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Theme.of(context).secondaryHeaderColor),
              child: Expanded(
                child: SignInForm(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
