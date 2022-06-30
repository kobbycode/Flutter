import 'package:flutter/material.dart';
import 'package:k_store/screens/login.dart';
import 'package:k_store/screens/logout.dart';
import 'package:k_store/screens/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'K-STORE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomPage(),
    );
  }
}