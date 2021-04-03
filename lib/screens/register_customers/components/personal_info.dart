import 'package:droan_insurence/enums.dart';
import 'package:droan_insurence/size_config.dart';
import 'package:flutter/material.dart';

class PersonlInfoForm extends StatefulWidget {
  PersonlInfoForm({Key key}) : super(key: key);

  @override
  _PersonlInfoFormState createState() => _PersonlInfoFormState();
}

class _PersonlInfoFormState extends State<PersonlInfoForm> {
  String name;
  String email;
  GENDER gender;
  String age;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: getProportionateScreenHeight(40.0),
        ),
        TextFormField(
          onChanged: (value) {
            name = value;
          },
          validator: (String value) {
            if (value == null || value.isEmpty || value.trim().isEmpty) {
              return 'required*';
            }
            return null;
          },
          enableSuggestions: true,
          decoration: InputDecoration(labelText: 'NAME', hintText: 'your_name'),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20.0),
        ),
        TextFormField(
          onChanged: (value) {
            email = value;
          },
          enableSuggestions: true,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              labelText: 'EMAIL', hintText: 'your_mail@example.com'),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20.0),
        ),
        TextFormField(
          onChanged: (value) {
            age = value;
          },
          keyboardType: TextInputType.number,
          enableSuggestions: true,
          decoration: InputDecoration(labelText: 'AGE', hintText: '28 years'),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20.0),
        ),
        ListTile(
          title: Text('MALE'),
          leading: Radio<GENDER>(
              value: GENDER.MALE,
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              }),
        ),
        ListTile(
          title: Text('FEMALE'),
          leading: Radio<GENDER>(
              value: GENDER.FEMALE,
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              }),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20.0),
        ),
      ],
    );
  }
}
