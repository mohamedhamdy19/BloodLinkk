import 'package:bloodlink/elegibility.dart';
import 'package:flutter/material.dart';
import 'ourbar.dart';
import 'bottom.dart';

const List<String> hospitalList = <String>[
  'Select a Hospital',
  'item1',
  'item2'
];
const List<String> bloodtypeslList = <String>[
  'Select Blood Type',
  'A+',
  'A-',
  'B+',
  'B-',
  'AB+',
  'AB-',
  'O+',
  'O-'
];

class Make_request extends StatefulWidget {
  const Make_request();

  @override
  State<Make_request> createState() => _Make_requestState();
}

class _Make_requestState extends State<Make_request> {
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: const MyBottomNavigationBar(),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        //  ,
        body: Center(
          child: Container(
            child: Column(
              children: [
                Container(
                  child: MyShape(),
                  height: 190,
                ),
                Container(
                  //transformAlignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  child: Text('Create a donation request',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                    width: 350,
                    margin: EdgeInsets.only(bottom: 30, right: 15, left: 15),
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 233, 203, 203),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 229, 214, 214),
                              offset: Offset(0.0, 0.0),
                              spreadRadius: 3.0,
                              blurRadius: 5)
                        ]),
                    child: selectHospital()),
                Container(
                    width: 350,
                    margin: EdgeInsets.only(bottom: 40, right: 15, left: 15),
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 233, 203, 203),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 229, 214, 214),
                              offset: Offset(0.0, 0.0),
                              spreadRadius: 3.0,
                              blurRadius: 5)
                        ]),
                    child: selectBloodType()),
                ElevatedButton(
                    style: buttonfill,
                    onPressed: () {},
                    child: Text(
                      'Fill up a questionnaire',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: buttonsend,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuestionnairPage()));
                  },
                  child: Text(
                    'Send Request',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//----------------------------------------------------------------
class selectHospital extends StatefulWidget {
  const selectHospital({super.key});

  @override
  State<selectHospital> createState() => _selectHospitalState();
}

class _selectHospitalState extends State<selectHospital> {
  String dropdownValue = hospitalList.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      dropdownColor: Color.fromARGB(255, 250, 218, 218),
      icon: Row(
        children: [
          SizedBox(
            width: 120,
          ),
          Icon(
            Icons.place,
            size: 20,
          ),
          Icon(
            Icons.arrow_drop_down,
            size: 40,
          ),
        ],
      ),
      elevation: 8,
      style: const TextStyle(
        color: Colors.black,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: hospitalList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(fontSize: 18),
          ),
        );
      }).toList(),
    );
  }
}

//-----------------------------------------------------------------
class selectBloodType extends StatefulWidget {
  const selectBloodType({super.key});

  @override
  State<selectBloodType> createState() => _selectBloodTypeState();
}

class _selectBloodTypeState extends State<selectBloodType> {
  String dropdownValue = bloodtypeslList.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      dropdownColor: Color.fromARGB(255, 250, 218, 218),
      icon: Row(
        children: [
          SizedBox(
            width: 135,
          ),
          Icon(
            Icons.arrow_drop_down,
            size: 40,
          ),
        ],
      ),
      elevation: 8,
      style: const TextStyle(
        color: Colors.black,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: bloodtypeslList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(fontSize: 18),
          ),
        );
      }).toList(),
    );
  }
}

//-----------------------------------------------------------------
final ButtonStyle buttonfill = ElevatedButton.styleFrom(
    minimumSize: Size(350, 50),
    backgroundColor: Color.fromARGB(255, 232, 160, 161),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))));
//------------------------------------------------------------------
final ButtonStyle buttonsend = ElevatedButton.styleFrom(
    minimumSize: Size(300, 70),
    backgroundColor: Color.fromARGB(255, 229, 30, 41),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))));
