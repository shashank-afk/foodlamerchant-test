import 'package:flutter/material.dart';
import '/screen/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodla Merchant',
      theme: ThemeData(
        primaryColor: Color(0xFF72cc50),

      ),
      home: LoginScreen(),
    );
  }
}
