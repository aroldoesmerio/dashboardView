import 'package:dashboard/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Dashboard Flutter Thursday",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Dashboard(),
    );
  }
}