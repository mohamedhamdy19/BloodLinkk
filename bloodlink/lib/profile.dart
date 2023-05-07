import 'package:bloodlink/bottom.dart';
import 'package:flutter/material.dart';
import 'ourbar.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                    SizedBox(
                      height: 110,
                      width: 110,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(120),
                        child: const Image(
                          image: AssetImage('images/account.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(
                        'Name',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    Center(
                      child: const Text(
                        'Last Donation date: ',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    const Center(
                      child: Text(
                        'Number of donations',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 3,
                        child: GestureDetector(
                          onTap: () {
                            print('onTap 1 pressed !');
                          },
                          child: const ListTile(
                            title: Text('User ID'),
                            //subtitle: Text('Edit notifications'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(
                              Icons.numbers_outlined,
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 3,
                        child: GestureDetector(
                          onTap: () {
                            print('onTap 2 pressed !');
                          },
                          child: const ListTile(
                            title: Text('Change name'),
                            //subtitle: Text('Edit notifications'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(
                              Icons.person_2_outlined,
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 3,
                        child: GestureDetector(
                          onTap: () {
                            print('onTap 3 pressed !');
                          },
                          child: const ListTile(
                            title: Text('Change email'),
                            //subtitle: Text('Edit notifications'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(
                              Icons.email_outlined,
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 3,
                        child: GestureDetector(
                          onTap: () {
                            print('onTap 4 pressed !');
                          },
                          child: const ListTile(
                            title: Text('Change mobile number'),
                            //subtitle: Text('Edit notifications'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(
                              Icons.mobile_screen_share_outlined,
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 3,
                        child: GestureDetector(
                          onTap: () {
                            print('onTap 5 pressed !');
                          },
                          child: const ListTile(
                            title: Text('Change date of birth'),
                            //subtitle: Text('Edit notifications'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(
                              Icons.date_range_outlined,
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 3,
                        child: GestureDetector(
                          onTap: () {
                            print('onTap 6 pressed !');
                          },
                          child: const ListTile(
                            title: Text('Change address'),
                            //subtitle: Text('Edit notifications'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(
                              Icons.location_on_outlined,
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 3,
                        child: GestureDetector(
                          onTap: () {
                            print('onTap 7 pressed !');
                          },
                          child: const ListTile(
                            title: Text('Change password'),
                            //subtitle: Text('Edit notifications'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(
                              Icons.password_outlined,
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 3,
                        child: GestureDetector(
                          onTap: () {
                            print('onTap 3 pressed !');
                          },
                          child: const ListTile(
                            title: Text('Delete my account'),
                            //subtitle: Text('Edit notifications'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            leading: Icon(
                              Icons.delete_outline,
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
