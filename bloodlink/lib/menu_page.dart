import 'package:bloodlink/invite_page.dart';
import 'package:bloodlink/logout.dart';
import 'package:bloodlink/needhelp.dart';
import 'package:bloodlink/settings.dart';
import 'package:bloodlink/signinup.dart';
import 'package:bloodlink/terms.dart';
import 'package:flutter/material.dart';
import 'ourbar.dart';
import 'bottom.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Card(
                        //elevation: 3,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TermsPage()));
                          },
                          child: const ListTile(
                            title: Text('Terms & Conditions'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            iconColor: Colors.black,
                            tileColor: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   height: 4,
                    // ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Card(
                          //    elevation: 3,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InvitPage()));
                            },
                            child: const ListTile(
                              title: Text('Invite'),
                              trailing: Icon(Icons.arrow_forward_ios),
                              iconColor: Colors.black,
                              tileColor: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        )),
                    // const SizedBox(
                    //   height: 4,
                    // ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Card(
                          //  elevation: 3,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Needhelp()));
                            },
                            child: const ListTile(
                              title: Text('Help Center'),
                              trailing: Icon(Icons.arrow_forward_ios),
                              iconColor: Colors.black,
                              tileColor: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        )),
                    // const SizedBox(
                    //   height: 4,
                    // ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Card(
                        //   elevation: 5,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Settings()));
                          },
                          child: const ListTile(
                            title: Text('Settings'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            iconColor: Colors.black,
                            tileColor: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   height: 4,
                    // ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Card(
                        //  elevation: 5,
                        child: GestureDetector(
                          onTap: () {
                            print('onTap 5 pressed !');
                          },
                          child: const ListTile(
                            title: Text('FAQs'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            iconColor: Colors.black,
                            tileColor: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Card(
                          //   elevation: 5,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Logout()));
                            },
                            child: const ListTile(
                              title: Text('Log out'),
                              trailing: Icon(Icons.arrow_forward_ios),
                              iconColor: Colors.black,
                              tileColor: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ),
            ),

            // const Padding(
            //   padding: EdgeInsets.only(top: 0.0),
            //   child: Image(
            //     image: AssetImage('assets/images/imeg.png'),
            //     width: 170,
            //     height: 130,
            //
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
