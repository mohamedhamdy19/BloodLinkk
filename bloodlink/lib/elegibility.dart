import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

void main() {
  runApp(QuestionnairPage());
}

class QuestionnairPage extends StatelessWidget {
  bool _throwShotAway = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Check Eligibility ',
                style: TextStyle(
                    color: Color.fromARGB(255, 199, 40, 28), fontSize: 30),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 65.0),
                    child: Text(
                      'fill up the following to be able to donate:',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                padding: EdgeInsets.all(10),
                //alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromARGB(240, 249, 219, 219),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(0.0, 0.0),
                          spreadRadius: 3.0,
                          blurRadius: 5)
                    ]),
                child: Column(children: [
                  Row(
                    children: const [
                      Text(
                        '1- Age',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'Blood donors must be at least 17 or 16 years old with '
                    'written parental consent.',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        '2-Weight:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Donors must weigh at least 45kg pounds.',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        '3-Health: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'Donors must be in good health and free from any infectious diseases.'
                    ' They should not have any chronic illnesses, '
                    'such as high blood pressure, diabetes, or heart disease.',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        '4-Travel:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'Donors who have recently traveled to certain countries may be '
                    'ineligible to donate due to the risk of exposure to infectious diseases.',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        '5-Medications: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'Some medications, such as antibiotics, '
                    'may render a person temporarily ineligible to donate blood.',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        '6-Lifestyle: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'People who engage in high-risk behaviors, such as drug use, '
                    'are generally not eligible to donate blood.',
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  MyCheckbox(),
                  const Text(
                    'By clicking , you agree to our terms & conditions ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12.5),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: ElevatedButton(
                    style: buttonPrimary,
                    onPressed: () {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.success,
                        animType: AnimType.rightSlide,
                        title:
                            'Blood donation process is successfully requested.',
                        desc: 'Wait for a accept/decline.',
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {},
                      ).show();
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCheckbox extends StatefulWidget {
  @override
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _isChecked,
      onChanged: (value) {
        setState(() {
          _isChecked = value!;
        });
      },
    );
  }
}

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
    minimumSize: Size(110, 50),
    backgroundColor: Color.fromARGB(255, 199, 40, 28),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))));
