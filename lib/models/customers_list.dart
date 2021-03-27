import 'dart:collection';

import 'package:droan_insurence/models/inspection_list.dart';
import 'package:droan_insurence/models/policy_data.dart';
import 'package:flutter/foundation.dart';

class Customer {
  String id;
  // personal data
  String name;
  String email;
  String gender;
  String age;
  // contact data
  String address;
  String mobile;
  String city;
  String pincode;
  String experience;
  // policies data
  List<Policy> _policies = [];
  // all inspection data
  List<Inspection> _inspections = [];

  Customer(
      {this.address,
      this.age,
      this.city,
      this.email,
      this.experience,
      this.gender,
      this.mobile,
      this.name,
      this.pincode});

  List<Policy> get policies {
    return UnmodifiableListView(_policies);
  }

  void addPolicy(Policy policy) {
    _policies.add(policy);
  }

  List<Inspection> get inspections {
    return UnmodifiableListView(_inspections);
  }

  void addInspection(Inspection inspection) {
    _inspections.add(inspection);
  }
}

class CustomerModel extends ChangeNotifier {
  List<Customer> _customersList = [];

  List<Customer> get customerList {
    return UnmodifiableListView(_customersList);
  }

  void addNewCustomer() {
    // TODO: Add add new customer implementation.
    notifyListeners();
  }

  void deleteCustomer(String id) {
    // TODO: implementation for delete the customer;
    notifyListeners();
  }

  void addPolicyToUser(String id, Policy policy) {
    notifyListeners();
  }

  List<Policy> getAllPoliciesOf(String id) {
    return UnmodifiableListView(
        _customersList.firstWhere((element) => element.id == id).policies);
  }

  List<Inspection> getAllInspectionsOf(String id) {
    return UnmodifiableListView(
        _customersList.firstWhere((element) => element.id == id).inspections);
  }
}
