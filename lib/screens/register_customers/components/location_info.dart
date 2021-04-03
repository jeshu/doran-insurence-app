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
    return Column(
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
              labelText: 'MOBILE NO.', hintText: 'xxx-xxx-xxxx'),
        ),
        SizedBox(
          height: getProportionateScreenHeight(40.0),
        ),
        TextFormField(
          onChanged: (value) {
            address = value;
          },
          enableSuggestions: true,
          decoration:
              InputDecoration(labelText: 'ADDRESS', hintText: 'your_address'),
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
          decoration: InputDecoration(labelText: 'PINCODE', hintText: 'xxxxxx'),
        ),
        SizedBox(
          height: getProportionateScreenHeight(40.0),
        ),
        TextFormField(
          onChanged: (value) {
            city = value;
          },
          enableSuggestions: true,
          decoration: InputDecoration(labelText: 'City', hintText: 'your_city'),
        ),
      ],
    );
  }
}
