import 'package:bloodlink/ourbar.dart';
import 'package:bloodlink/verfi_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Donor_data extends StatelessWidget {
  const Donor_data();
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
                width: double.infinity,
              ),
              const SizedBox(
                height: 48,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Center(
                  child: Text(
                    'Registering as a donor:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('Date of birth: '),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 85),
                    child: Container(
                      height: 20,
                      width: 150,
                      child: TextField(
                        decoration: InputDecoration(
                            //hintText: 'Enter date of birth',

                            ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('Gender: '),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 118),
                    child: Container(
                      height: 20,
                      width: 150,
                      child: TextField(
                        decoration: InputDecoration(
                            //hintText: 'Enter date of birth',

                            ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('ID: '),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 150),
                    child: Container(
                      height: 20,
                      width: 150,
                      child: TextField(
                        decoration: InputDecoration(
                            //hintText: 'Enter date of birth',

                            ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('Phone number:'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Container(
                      height: 20,
                      width: 150,
                      child: TextField(
                        decoration: InputDecoration(
                            //hintText: 'Enter date of birth',

                            ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('Weight: '),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 120),
                    child: Container(
                      height: 20,
                      width: 150,
                      child: TextField(
                        decoration: InputDecoration(
                            //hintText: 'Enter date of birth',

                            ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.bloodtype,
                    color: Colors.red,
                  ),
                  Text(
                    'Blood Group*',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 20),
                    child: SizedBox(
                      height: 50,
                      width: 65,
                      child: ColorChangingButton(
                        buttonText: "A+",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 20),
                    child: SizedBox(
                      height: 50,
                      width: 65,
                      child: ColorChangingButton(
                        buttonText: "O+",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 20),
                    child: SizedBox(
                      height: 50,
                      width: 65,
                      child: ColorChangingButton(
                        buttonText: "B+",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 50,
                      width: 65,
                      child: ColorChangingButton(
                        buttonText: "AB+",
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 20),
                    child: SizedBox(
                      height: 50,
                      width: 65,
                      child: ColorChangingButton(
                        buttonText: "A-",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 20),
                    child: SizedBox(
                      height: 50,
                      width: 65,
                      child: ColorChangingButton(
                        buttonText: "O-",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 20),
                    child: SizedBox(
                      height: 50,
                      width: 65,
                      child: ColorChangingButton(
                        buttonText: "B-",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 50,
                      width: 65,
                      child: ColorChangingButton(
                        buttonText: "AB-",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: const [
                  SizedBox(width: 8),
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  Text(
                    'Location',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 115),
                    child: MapButton(
                      mapUrl:
                          'https://www.google.com/maps/search/?api=1&query=Googleplex',
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Verfication_page()));
                  },
                  child: Text(
                    'Done',
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

class ColorChangingButton extends StatefulWidget {
  final String buttonText;

  ColorChangingButton({required this.buttonText});

  @override
  _ColorChangingButtonState createState() => _ColorChangingButtonState();
}

class _ColorChangingButtonState extends State<ColorChangingButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: _isPressed ? Colors.red : Colors.white,
        ),
        onPressed: () {
          setState(() {
            _isPressed = !_isPressed;
          });
        },
        child: Text(
          widget.buttonText,
          style: TextStyle(
            color: _isPressed ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

class MapButton extends StatelessWidget {
  final String mapUrl;

  const MapButton({Key? key, required this.mapUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (await canLaunch(mapUrl)) {
          await launch(mapUrl);
        } else {
          throw 'Could not launch map URL';
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            Color.fromARGB(255, 237, 231, 231)),
      ),
      child: Text(
        'Google Map ',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
