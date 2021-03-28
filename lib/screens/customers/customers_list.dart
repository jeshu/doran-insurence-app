import './components/body.dart';
import 'package:droan_insurence/screens/register_customers/register_customers.dart';
import 'package:flutter/material.dart';

class CustomerList extends StatelessWidget {
  static String routeName = '/customers';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('hello....');
            Navigator.pushNamed(context, RegisterCustomer.routeName);
          },
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
