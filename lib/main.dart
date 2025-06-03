import 'package:flutter/material.dart';

import 'loginsignup/login.dart'; // This connects the login screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SeniSafe',
      debugShowCheckedModeBanner: false,
      home: const LoginPage(), // This sets LoginPage as the starting screen
    );
  }
}
