import 'package:bloodlink/bottom.dart';
import 'package:bloodlink/signinup.dart';
import 'package:flutter/material.dart';
import 'ourbar.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

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
            // ignore: prefer_const_constructors
            SizedBox(
                width: double.infinity, height: 250, child: const MyShape()),
            const Image(
              image: AssetImage('images/signOut.png'),
              width: 250,
              height: 250,
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              // ignore: prefer_const_constructors
              child: Text(
                'You have successfully logged out of the application.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sign_in_up_page()));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 199, 40, 28)),
                fixedSize: MaterialStateProperty.all<Size>(
                  const Size(200, 50), // set width to 200 and height to 50
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              child: const Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
