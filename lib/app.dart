import 'package:flutter/material.dart';
import 'home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internet Bills',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //home: InternetBillsScreen(),
    );
  }
}
