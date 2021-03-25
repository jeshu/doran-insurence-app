import 'package:droan_insurence/size_config.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.06),
        TextField(
          onChanged: (value) {},
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
          onChanged: (value) {},
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        ElevatedButton(child: Text('Login'), onPressed: () {}),
      ],
    );
  }
}
