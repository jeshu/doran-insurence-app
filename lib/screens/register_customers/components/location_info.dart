import 'package:droan_insurence/enums.dart';
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
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                mobile = value;
              },
              enableSuggestions: true,
              decoration: InputDecoration(
                  labelText: 'MOBILE NO.',
                  hintText: 'Enter your mobile number'),
            ),
            SizedBox(
              height: getProportionateScreenHeight(40.0),
            ),
            TextFormField(
              onChanged: (value) {
                address = value;
              },
              enableSuggestions: true,
              decoration: InputDecoration(
                  labelText: 'ADDRESS', hintText: 'Enter your address'),
            ),
            SizedBox(
              height: getProportionateScreenHeight(40.0),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                pincode = value;
              },
              enableSuggestions: true,
              decoration: InputDecoration(
                  labelText: 'PINCODE', hintText: 'Enter your Pincode'),
            ),
            SizedBox(
              height: getProportionateScreenHeight(40.0),
            ),
            TextFormField(
              onChanged: (value) {
                city = value;
              },
              enableSuggestions: true,
              decoration: InputDecoration(
                  labelText: 'City', hintText: 'Enter your city'),
            ),
          ],
        ),
      ),
    );
  }
}
