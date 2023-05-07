import 'package:bloodlink/variables.dart';
import 'package:flutter/material.dart';
import 'ourbar.dart';
import 'donordata.dart';
import 'hospitadata.dart';

class Usertype extends StatefulWidget {
  const Usertype({super.key});

  @override
  State<Usertype> createState() => _UsertypeState();
}

class _UsertypeState extends State<Usertype> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Column(children: [
          const SizedBox(height: 200, child: MyShape()),
          const Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Text(
              "what are you registering as?",
              style: TextStyle(fontSize: 22),
            ),
          ),
          const Spacer(flex: 1),
          Row(
            children: [
              const Spacer(
                flex: 1,
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Donor",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                      height: 120,
                      width: 120,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            user = true;
                            hospital = false;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Donor_data()));
                        },
                        child: Image.asset('images/donor.jpg'),
                      ))
                ],
              ),
              const Spacer(
                flex: 2,
              ),
              Column(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Hospital",
                        style: TextStyle(fontSize: 20),
                      )),
                  SizedBox(
                      height: 120,
                      width: 120,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            user = false;
                            hospital = true;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Hospitaldata()));
                        },
                        child: Image.asset('images/hospital.jpg'),
                      ))
                ],
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
          const Spacer(flex: 6)
        ]),
      ),
    );
  }
}
