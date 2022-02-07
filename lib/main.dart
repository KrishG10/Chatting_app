import 'package:flutter/material.dart';
import 'package:simple_chatting_app/screens/welcome_sceen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Krish Gupta',
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
