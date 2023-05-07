import 'package:bloodlink/make_request.dart';
import 'package:bloodlink/signin.dart';
import 'package:bloodlink/signinup.dart';
import 'package:flutter/material.dart';
import 'signupp.dart';
import 'ourbar.dart';
import 'backarrow.dart';

class OnBoardScreen extends StatelessWidget {
  final PageController controller = PageController();

  OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: MyShape(),
                height: 190,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, top: 55),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Signup()));
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                _buildPage(
                  'images/pic1.png',
                  'Find the nearest Blood Banks/Hospital in your area to make your blood donation appointment.',
                ),
                _buildPage(
                  'images/pic2.png',
                  ' Find the closest donors to your location. ',
                ),
                _buildPage(
                  'images/pic3.png',
                  'Donate to recipients in need closest to you.',
                ),
                _buildPage("images/Pic.png",
                    'Be part of blood donation orientation campaigns and events . ')
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 199, 40, 28),
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          if (controller.page != 3) {
            controller.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          } else {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Signup()));
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildPage(String imagePath, String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 100),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          const SizedBox(
            height: 15,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
