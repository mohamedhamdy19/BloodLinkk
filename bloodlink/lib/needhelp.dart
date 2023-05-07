import 'package:bloodlink/bottom.dart';
import 'package:flutter/material.dart';
import 'ourbar.dart';

class Needhelp extends StatelessWidget {
  const Needhelp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: const MyBottomNavigationBar(),
        backgroundColor: Colors.white,
        body: Column(
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
            const Image(
              image: AssetImage('images/needHelp.png'),
              width: 200,
              height: 200,
            ),
            const Text(
              'Need Help?',
              style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 199, 40, 28),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              // ignore: prefer_const_constructors
              child: Text(
                'Tell us how we can help you. It looks like you are experiencing problems while using our app. We are here to help so please get in touch with us.',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
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
                'Contact Us',
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
