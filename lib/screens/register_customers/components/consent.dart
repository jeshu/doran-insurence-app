import 'package:droan_insurence/size_config.dart';
import 'package:flutter/material.dart';

class LocationInfo extends StatefulWidget {
  LocationInfo({Key key}) : super(key: key);

  @override
  _LocationInfoState createState() => _LocationInfoState();
}

class _LocationInfoState extends State<LocationInfo> {
  bool consent;
  bool newsletter;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: getProportionateScreenHeight(40.0),
            ),
            Row(
              children: [
                Checkbox(
                    value: consent,
                    onChanged: (value) {
                      consent = value;
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
                    value: consent,
                    onChanged: (value) {
                      consent = value;
                    }),
                Text(
                  'Sign me up for the newsletter.',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
