import 'package:flutter/material.dart';

class Presdoop extends StatelessWidget {
  const Presdoop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Patient ID : 87854", style : TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),centerTitle: true,),
      body: Ink.image(image: AssetImage("as/presdoop.jpg"),fit: BoxFit.contain,)
    );
  }
}
