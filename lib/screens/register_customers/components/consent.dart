import 'package:droan_insurence/size_config.dart';
import 'package:flutter/material.dart';

class LocationInfo extends StatefulWidget {
  LocationInfo({Key key}) : super(key: key);

  @override
  _LocationInfoState createState() => _LocationInfoState();
}

class _LocationInfoState extends State<LocationInfo> {
  String address;
  String mobile;
  String city;
  String pincode;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: getProportionateScreenHeight(40.0),
            ),
          ],
        ),
      ),
    );
  }
}
