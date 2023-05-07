import 'package:flutter/material.dart';
import 'signinup.dart';

void main() {
  runApp(const Learningapp());
}

class Learningapp extends StatelessWidget {
  const Learningapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Sign_in_up_page());
  }
}
