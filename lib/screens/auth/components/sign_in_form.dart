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
        Text(
          'Sign In',
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(color: Theme.of(context).primaryColor),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        TextField(
          onChanged: (value) {},
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        TextField(
          onChanged: (value) {},
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        ElevatedButton(child: Text('Login'), onPressed: () {}),
      ],
    );
  }
}
