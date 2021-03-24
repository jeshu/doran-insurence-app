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
