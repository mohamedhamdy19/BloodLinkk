import 'package:bloodlink/bottom.dart';
import 'package:flutter/material.dart';
import 'ourbar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

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
            //  SizedBox(
            //      width: double.infinity, height: 250, child: const MyShape()),
            Expanded(
              child: Container(
                child: ListView(
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
                              padding: EdgeInsets.only(top: 25.0),
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
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 3,
                        child: GestureDetector(
                          onTap: () {
                            print('onTap 1 pressed !');
                          },
                          child: const ListTile(
                            title: Text('Notifications'),
                            //subtitle: Text('Edit notifications'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(
                              Icons.notifications_outlined,
                              size: 30,
                            ),
                            //contentPadding: EdgeInsets.all(15),
                            // dense: true,
                            iconColor: Colors.black,
                            textColor: Colors.black,
                            tileColor: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Card(
                          elevation: 3,
                          child: GestureDetector(
                            onTap: () {
                              print('onTap 2 pressed !');
                            },
                            child: const ListTile(
                              title: Text('Appearance'),
                              //subtitle: Text('Edit notifications'),
                              trailing: Icon(Icons.arrow_forward_ios),
                              leading: Icon(
                                Icons.remove_red_eye_outlined,
                                size: 30,
                              ),
                              //contentPadding: EdgeInsets.all(15),
                              // dense: true,
                              iconColor: Colors.black,
                              textColor: Colors.black,
                              tileColor: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 4,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Card(
                          elevation: 3,
                          child: GestureDetector(
                            onTap: () {
                              print('onTap 3 pressed !');
                            },
                            child: const ListTile(
                              title: Text('Language'),
                              //subtitle: Text('Edit notifications'),
                              trailing: Icon(Icons.arrow_forward_ios),
                              leading: Icon(
                                Icons.language,
                                size: 30,
                              ),
                              //contentPadding: EdgeInsets.all(15),
                              // dense: true,
                              iconColor: Colors.black,
                              textColor: Colors.black,
                              tileColor: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 5,
                        child: GestureDetector(
                          onTap: () {
                            print('onTap 4 pressed !');
                          },
                          child: const ListTile(
                            title: Text('Submit Feedback'),
                            //subtitle: Text('Edit notifications'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(
                              Icons.feedback_outlined,
                              size: 30,
                            ),
                            //contentPadding: EdgeInsets.all(15),
                            // dense: true,
                            iconColor: Colors.black,
                            textColor: Colors.black,
                            tileColor: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 5,
                        child: GestureDetector(
                          onTap: () {
                            print('onTap 5 pressed !');
                          },
                          child: const ListTile(
                            title: Text('App info'),
                            //subtitle: Text('Edit notifications'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(
                              Icons.info_outline_rounded,
                              size: 30,
                            ),
                            //contentPadding: EdgeInsets.all(15),
                            // dense: true,
                            iconColor: Colors.black,
                            textColor: Colors.black,
                            tileColor: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
