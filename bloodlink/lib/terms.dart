import 'package:bloodlink/bottom.dart';
import 'package:flutter/material.dart';
import 'ourbar.dart';
import 'backarrow.dart';

class TermsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: const MyBottomNavigationBar(),
        backgroundColor: Colors.white,
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Stack(
              children: [
                Container(
                  child: MyShape(),
                  height: 190,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: const [
                  Text(
                    'Terms & Condition',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Eligibility Criteria',
                      style: TextStyle(
                          color: Color.fromARGB(255, 199, 40, 28),
                          fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, right: 5),
              child: Text(
                'The user may or may not be an Indian citizen and '
                'at the time of registration and donation, user '
                'may or may not be in the territory of India but'
                ' he shall be of the age ranging between, 18 year '
                'to 60 years. However, donor’s above 45kgs and minimum '
                'haemoglobin of 12.5 gm is recommended. Further, user’s '
                'last donation should be between three or more months '
                'earlier and on the date of donation or prior three months'
                ' of blood donation. Further, user must be healthy and medically '
                'sound. However, the majority age i.e. 18 years is the '
                'registration criteria on the application and rest of the '
                'abovementioned contents of the paragraphs are applicable for '
                'the blood donation. D2D completely abides World Health '
                'Organisation guidelines for safety blood transfusion and'
                ' National Blood Policy i.e. recognised by the Ministry of '
                'Health with respect to the same. However, D2D should not be '
                'interpreted as blood bank or transfusion agency.',
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
