import 'package:droan_insurence/screens/sign_in/sign_in_screen.dart';
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
      child: Center(
        child: Container(
          margin:
              EdgeInsets.symmetric(vertical: getProportionateScreenHeight(50)),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "DRONE INSURANCE",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 60, color: Colors.lightBlueAccent),
                  ),
                ),
              ),
              ElevatedButton(
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 20, letterSpacing: 1.2),
                  ),
                  autofocus: true,
                  onPressed: () {
                    Navigator.pushNamed(context, SignInScreen.routeName);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
