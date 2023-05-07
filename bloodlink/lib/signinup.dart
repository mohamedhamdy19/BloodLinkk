import 'package:flutter/material.dart';
import 'ourbar.dart';
import 'mohamed_onboarding.dart';
import 'signin.dart';

class Sign_in_up_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 252, 255, 255),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 190,
                  child: const MyShape(flipped: false),
                ),
                const Spacer(
                  flex: 1,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  child: Column(
                    children: const [
                      Text("Join the community of\n       lifesavers!",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Edu",
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Container(
                    child: Image.asset("images/blood-donation.png"),
                    height: 120,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Join Us Now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(0),
                      child: Divider(
                          indent: 30,
                          endIndent: 30,
                          thickness: 0.5,
                          color: Color.fromARGB(255, 134, 25, 17)),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(170, 50),
                        primary: const Color.fromARGB(255, 199, 40, 28),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return OnBoardScreen();
                        }));
                      },
                      child: const Text('Get Started'),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Text("already have an account?",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Kalam",
                          )),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(170, 50),
                        primary: Color.fromARGB(255, 199, 40, 28),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const Signin();
                        }));
                      },
                      child: const Text('Sign In'),
                    )
                  ],
                ),
                const Spacer(
                  flex: 5,
                ),
              ],
            )));
  }
}
