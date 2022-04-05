import 'package:flutter/material.dart';
import 'package:seltzer_build1/screens/Doctor/docscreen.dart';
import 'package:seltzer_build1/screens/pharma/pharmascreen.dart';
import 'package:seltzer_build1/screens/role.dart';
import 'package:seltzer_build1/screens/roleselection.dart';
import 'screens/login.dart';

void main() {
  runApp(MaterialApp(
    title: ' Seltzer ',
    theme: ThemeData(
      primarySwatch: Colors.amber,

    ),
    home: PostRoleselection(),
  ));
}





