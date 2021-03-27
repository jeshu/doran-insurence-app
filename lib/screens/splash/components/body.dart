import 'package:droan_insurence/models/user_model.dart';
import 'package:droan_insurence/screens/auth/auth.dart';
import 'package:droan_insurence/screens/customers/customers_list.dart';
import 'package:droan_insurence/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = Provider.of<UserModel>(context).isLoggedIn;
    if (isLoggedIn) {
      Navigator.pushNamed(context, CustomerList.routeName);
    }
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
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
              if (isLoggedIn == true)
                ElevatedButton(
                    child: Text(
                      "Continue",
                    ),
                    autofocus: true,
                    onPressed: () {
                      Navigator.pushNamed(context, CustomerList.routeName);
                    })
              else
                ElevatedButton(
                    child: Text(
                      "Sign In",
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
