import 'package:droan_insurence/models/user_model.dart';
import 'package:droan_insurence/screens/customers/customers_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/signin';

  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = Provider.of<UserModel>(context).isLoggedIn;
    if (isLoggedIn) {
      Navigator.pushNamed(context, CustomerList.routeName);
    }
    return Scaffold(
      body: Body(),
    );
  }
}
