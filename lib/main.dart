import 'package:flutter/material.dart';
import 'package:jhoss_cardenas_movil/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MovilProducts',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

