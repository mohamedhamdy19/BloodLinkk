import 'package:bloodlink/hospitalregister_success.dart';
import 'package:bloodlink/userregister_success.dart';
import 'package:flutter/material.dart';
import 'ourbar.dart';
import 'variables.dart';

class Verfication_page extends StatefulWidget {
  const Verfication_page();

  @override
  State<Verfication_page> createState() => _Verfication_pageState();
}

class _Verfication_pageState extends State<Verfication_page> {
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        //  ,
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                Container(
                  height: 190,
                  child: MyShape(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 120),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30, right: 30),
                        padding: EdgeInsets.only(top: 50, bottom: 50),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black38,
                                  offset: Offset(4.0, 4.0),
                                  spreadRadius: 2.0)
                            ]),
                        child: Column(children: [
                          const Text("a verification code has been",
                              style: TextStyle(
                                fontSize: 18,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("sent to -----------, please check",
                              style: TextStyle(
                                fontSize: 18,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("your SMS messages",
                              style: TextStyle(
                                fontSize: 18,
                              ))
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                        padding: EdgeInsets.all(30),
                        alignment: Alignment.center,
                        child: Column(children: [
                          const Text("Enter the OBT code you have",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                          const Text("received in your messages",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            padding: EdgeInsets.only(top: 0, left: 10),
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 10,
                                      spreadRadius: 4.0)
                                ]),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.all(10),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            padding: EdgeInsets.only(top: 0, left: 10),
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 10,
                                      spreadRadius: 4.0)
                                ]),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.all(10),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            padding: EdgeInsets.only(top: 0, left: 10),
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 10,
                                      spreadRadius: 4.0)
                                ]),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.all(10),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            padding: EdgeInsets.only(top: 0, left: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 10,
                                      spreadRadius: 4.0)
                                ]),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.all(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                              style: buttonPrimary,
                              onPressed: () {
                                setState(() {
                                  if (user == true) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const UserRegister_success()));
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Hosregister_success()));
                                  }
                                });
                              },
                              child: Text(
                                'Verify',
                                style: TextStyle(fontSize: 15),
                              )),
                          SizedBox(
                            height: 30,
                          ),
                          Text("didn't receive?",
                              style: TextStyle(
                                fontSize: 15,
                              )),
                          ElevatedButton(
                              style: resendButton,
                              onPressed: () {},
                              child: Text(
                                'resend code',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(31, 58, 192, 1)),
                              )),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//-----------------------------------------------------------------
final ButtonStyle buttonBack = ElevatedButton.styleFrom(
    minimumSize: Size(70, 50),
    backgroundColor: Color.fromARGB(255, 199, 40, 28),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))));

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
    minimumSize: Size(110, 50),
    backgroundColor: Color.fromARGB(255, 199, 40, 28),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))));

final ButtonStyle resendButton = ElevatedButton.styleFrom(
    backgroundColor: Color.fromARGB(1, 255, 255, 255),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))));
