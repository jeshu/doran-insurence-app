import 'dart:ffi';

import 'package:droan_insurence/constants.dart';
import 'package:droan_insurence/screens/auth/components/sign_up_form.dart';
import './sign_in_form.dart';
import 'package:droan_insurence/size_config.dart';
import 'package:flutter/material.dart';

enum AUTH_SCREEN { SIGN_IN, SIGN_UP }

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  AUTH_SCREEN currentView = AUTH_SCREEN.SIGN_UP;

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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AuthTab(
                        label: 'Sign In',
                        isActive: currentView == AUTH_SCREEN.SIGN_IN,
                        onPressed: () {
                          setState(() {
                            currentView = AUTH_SCREEN.SIGN_IN;
                          });
                        },
                      ),
                      Text(
                        "|",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      AuthTab(
                        label: 'Sign Up',
                        isActive: currentView == AUTH_SCREEN.SIGN_UP,
                        onPressed: () {
                          setState(() {
                            currentView = AUTH_SCREEN.SIGN_UP;
                          });
                        },
                      ),
                    ],
                  ),
                  currentView == AUTH_SCREEN.SIGN_UP
                      ? SignUpForm()
                      : SignInForm(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AuthTab extends StatelessWidget {
  const AuthTab({this.isActive, this.label, this.onPressed});
  final bool isActive;
  final String label;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.headline5.copyWith(
                color: isActive
                    ? Theme.of(context).disabledColor
                    : Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }
}
