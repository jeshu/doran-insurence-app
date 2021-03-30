import 'package:droan_insurence/screens/register_customers/components/personal_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _currentStep = 0;

  void tapped(step) {
    if (step >= 3) {
      return;
    }
    setState(() {
      if (step >= 0) {
        _currentStep = step;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Stepper(
          type: StepperType.horizontal,
          currentStep: _currentStep,
          controlsBuilder: (BuildContext context,
              {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
            return Row(
              children: <Widget>[
                TextButton(
                  onPressed: onStepContinue,
                  child: const Text('NEXT'),
                ),
                if (_currentStep != 0)
                  TextButton(
                    onPressed: onStepCancel,
                    child: const Text('BACK'),
                  ),
              ],
            );
          },
          onStepTapped: (step) => tapped(step),
          onStepContinue: () {
            print('continue is clicked...');
            tapped(_currentStep + 1);
          },
          onStepCancel: () {
            tapped(_currentStep - 1);
          },
          steps: [
            Step(
              title: Column(
                children: <Widget>[
                  Icon(
                    Icons.person_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
              content: Column(
                children: [
                  Text(
                    'Personal Info',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  PersonlInfoForm()
                ],
              ),
            ),
            Step(
              title: Column(
                children: <Widget>[
                  Icon(
                    Icons.location_on_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
              content: Column(
                children: [
                  Text(
                    'Location Info',
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
            ),
            Step(
              title: Column(
                children: <Widget>[
                  Icon(
                    CupertinoIcons.bell,
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
              content: Column(
                children: [
                  Text(
                    'Location Info',
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
