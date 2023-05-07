import 'package:flutter/material.dart';
import 'ourbar.dart';
import 'bottom.dart';

class InvitPage extends StatelessWidget {
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
            const Padding(
              padding: EdgeInsets.only(top: 0.0),
              child: Image(
                image: AssetImage('images/Picture1.png'),
                width: 270,
                height: 230,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                'Invite friends.',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              // ignore: prefer_const_constructors
              child: Text(
                'Share the app’s link with your friends and relatives.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 199, 40, 28)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  child: const Text(
                    'Send invite',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
