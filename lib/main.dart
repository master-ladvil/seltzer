import 'package:flutter/material.dart';
import 'package:seltzer_build1/screens/Doctor/docscreen.dart';
import 'screens/login.dart';
import 'screens/homescreen.dart';
void main() {
  runApp(MaterialApp(
    title: ' Seltzer ',
    theme: ThemeData(
      primarySwatch: Colors.amber,

    ),
    home: Login(),
  ));
}





