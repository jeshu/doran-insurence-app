import 'package:droan_insurence/size_config.dart';
import 'package:flutter/material.dart';

class Consent extends StatefulWidget {
  Consent({Key key}) : super(key: key);

  @override
  _ConsentState createState() => _ConsentState();
}

class _ConsentState extends State<Consent> {
  bool consent = false;
  bool newsletter = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: getProportionateScreenHeight(40.0),
        ),
        Row(
          children: [
            Checkbox(
                value: consent,
                onChanged: (value) {
                  setState(() {
                    consent = value;
                  });
                }),
            Text(
              'I agree to the terms and conditions.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: newsletter,
                onChanged: (value) {
                  setState(() {
                    newsletter = value;
                  });
                }),
            Text(
              'Sign me up for the newsletter.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ],
    );
  }
}
