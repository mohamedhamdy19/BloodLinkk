import 'package:bloodlink/verfi_page.dart';
import 'package:flutter/material.dart';
import 'ourbar.dart';

const List<String> countryList = <String>['item1', 'item2'];
const List<String> regionList = <String>['item1', 'item2', 'item3'];

class Hospitaldata extends StatelessWidget {
  const Hospitaldata();
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
                    margin: EdgeInsets.only(top: 220),
                    child: Column(
                      children: [
                        const Text(
                          'Registering as a Hospital/Blood bank: ',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          //height: 800,,
                          margin: const EdgeInsets.only(
                              left: 20, top: 20, right: 30, bottom: 10),
                          child: Column(
                            children: [
                              //height: 20,
                              const Text(
                                'Admin ID/Code',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 210, 207, 207),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextField(
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: const EdgeInsets.all(10),
                                  ),
                                ),
                              ),
                              // field 2
                              const SizedBox(
                                height: 15,
                              ),
                              const SizedBox(
                                  //height: 20,
                                  child: Text(
                                'Admin Name',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              )),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 210, 207, 207),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextField(
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: const EdgeInsets.all(10),
                                  ),
                                ),
                              ),
                              // field 3
                              const SizedBox(
                                height: 15,
                              ),
                              const SizedBox(
                                  //height: 20,
                                  child: Text(
                                'Country',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              )),
                              Container(
                                  padding: EdgeInsets.only(right: 20, left: 20),
                                  width: 350,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 210, 207, 207),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    child: const chooseCountry(),
                                    width: double.infinity,
                                  )),
                              // field 4
                              const SizedBox(
                                height: 15,
                              ),
                              const SizedBox(
                                  //height: 20,
                                  child: Text(
                                'Region',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              )),
                              Container(
                                  padding: EdgeInsets.only(right: 20, left: 20),
                                  width: 350,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 210, 207, 207),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const chooseRegion()),
                              // button
                              const SizedBox(
                                height: 32,
                              ),
                              ElevatedButton(
                                  style: buttonPrimary,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Verfication_page()));
                                  },
                                  child: Text(
                                    'Creat Hospital account',
                                    style: TextStyle(fontSize: 15),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//----------------------------------------------------------------

//-----------------------------------------------------------------
final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
    minimumSize: Size(600, 60),
    primary: Color.fromARGB(255, 199, 40, 28),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))));
//-----------------------------------------------------------------
final ButtonStyle buttonBack = ElevatedButton.styleFrom(
    minimumSize: Size(70, 50),
    backgroundColor: Color.fromARGB(255, 199, 40, 28),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))));

//-----------------------------------------------------------------
class chooseCountry extends StatefulWidget {
  const chooseCountry({super.key});

  @override
  State<chooseCountry> createState() => _chooseCountryState();
}

class _chooseCountryState extends State<chooseCountry> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: const Text('Choose Country'),
      value: dropdownValue,
      dropdownColor: const Color.fromARGB(255, 210, 207, 207),
      icon: Row(
        children: const [
          SizedBox(
            width: 123,
          ),
          Icon(Icons.arrow_drop_down, size: 40),
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
      items: countryList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: const TextStyle(fontSize: 18),
          ),
        );
      }).toList(),
    );
  }
}

//-----------------------------------------------------------------
class chooseRegion extends StatefulWidget {
  const chooseRegion({super.key});

  @override
  State<chooseRegion> createState() => _chooseRegionState();
}

class _chooseRegionState extends State<chooseRegion> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: const Text('Choose Region'),
      value: dropdownValue,
      dropdownColor: const Color.fromARGB(255, 210, 207, 207),
      icon: Row(
        children: const [
          SizedBox(
            width: 130,
          ),
          Icon(Icons.arrow_drop_down, size: 40),
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
      items: regionList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: const TextStyle(fontSize: 18),
          ),
        );
      }).toList(),
    );
  }
}
