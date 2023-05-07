import 'package:bloodlink/make_request.dart';
import 'package:flutter/material.dart';
import 'ourbar.dart';

class UserRegister_success extends StatelessWidget {
  const UserRegister_success();
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
                  margin: EdgeInsets.only(left: 30, right: 30, top: 120),
                  padding: EdgeInsets.all(50),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0.0, 0.0),
                            spreadRadius: 3.0,
                            blurRadius: 5)
                      ]),
                  child: Column(children: [
                    Image.asset("images/check-mark.png", width: 100),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: 200,
                        child: const Text(
                          "You have been successfully registered as a donor!",
                          style: TextStyle(fontSize: 18),
                        )),
                    const SizedBox(
                      height: 32,
                    ),
                    ElevatedButton(
                        style: buttonPrimary,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Make_request()));
                        },
                        child: const Text(
                          'OK',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//-----------------------------------------------------------------
final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
    minimumSize: const Size(100, 50),
    backgroundColor: const Color.fromARGB(255, 199, 40, 28),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))));
