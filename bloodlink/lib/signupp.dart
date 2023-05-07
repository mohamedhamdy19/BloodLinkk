import 'package:flutter/material.dart';
import 'ourbar.dart';
import 'usertype.dart';

class Signup extends StatelessWidget {
  const Signup();
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: MyShape(),
                height: 190,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, left: 16),
                    child: Text(
                      "Full Name",
                      style: TextStyle(
                        fontSize: 22.0,
                        // fontStyle: FontStyle.italic,
                        // fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 210, 207, 207),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Your Name',
                    // hintStyle: siz,
                    contentPadding: const EdgeInsets.all(20),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, left: 16),
                    child: Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 22.0,
                        // fontStyle: FontStyle.italic,
                        // fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 210, 207, 207),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'xxx@email.com',
                    // hintStyle: siz,
                    contentPadding: const EdgeInsets.all(20),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 15),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 22.0,
                        // fontStyle: FontStyle.italic,
                        // fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 210, 207, 207),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your password',
                    contentPadding: const EdgeInsets.all(20),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, left: 16),
                    child: Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontSize: 22.0,
                        // fontStyle: FontStyle.italic,
                        // fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 210, 207, 207),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your password',
                    contentPadding: const EdgeInsets.all(20),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Usertype()));
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 70),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 199, 40, 28),
                    ),
                    foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//----------------------------------------------------------------
