import 'package:droan_insurence/size_config.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key key,
  }) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool consent = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        TextField(
          onChanged: (value) {},
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        TextField(
          onChanged: (value) {},
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Row(
          children: [
            Checkbox(
              value: consent,
              onChanged: (value) {},
            ),
            Text('I agree the terms and conditions.')
          ],
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        ElevatedButton(child: Text('Sign Up'), onPressed: () {}),
      ],
    );
  }
}
