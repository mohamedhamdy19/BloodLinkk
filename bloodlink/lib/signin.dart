import 'package:bloodlink/make_request.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin();
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
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 199, 40, 28),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 10.0,
                      left: 30,
                    ),
                    child: Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 20.0,
                        // fontStyle: FontStyle.italic,
                        // fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 210, 207, 207),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Your Email',
                    // hintStyle: siz,
                    contentPadding: const EdgeInsets.all(20),
                  ),
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0, left: 30, top: 30),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 20.0,
                        // fontStyle: FontStyle.italic,
                        //fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
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
                padding: EdgeInsets.only(top: 10.0, left: 220),
                child: GestureDetector(
                  onTap: () {
                    // Implement "forgot password" functionality here
                  },
                  child: Text(
                    'forgot password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(170, 50),
                      primary: Color.fromARGB(255, 199, 40, 28),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Make_request()));
                    },
                    child: const Text('Sign In'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
