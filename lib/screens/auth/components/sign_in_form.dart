import 'package:droan_insurence/models/user_model.dart';
import 'package:droan_insurence/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    Function login = Provider.of<UserModel>(context).login;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.06),
        TextField(
          onChanged: (value) {
            email = email;
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email_outlined,
              color: Theme.of(context).primaryColor,
              semanticLabel: 'Email address',
            ),
            hintText: 'Email address',
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock_outline,
              color: Theme.of(context).primaryColor,
              semanticLabel: 'Password',
            ),
            hintText: 'Password',
          ),
          onChanged: (value) {
            password = password;
          },
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        ElevatedButton(
            child: Text('Login'),
            onPressed: () {
              login(email, password);
            }),
      ],
    );
  }
}
