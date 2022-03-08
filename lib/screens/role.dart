import 'package:flutter/material.dart';
import 'package:seltzer_build1/screens/registration.dart';

import 'Doctor/docscreen.dart';

class Roleselection extends StatefulWidget {
  const Roleselection({Key? key}) : super(key: key);

  @override
  _RoleselectionState createState() => _RoleselectionState();
}

class _RoleselectionState extends State<Roleselection> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    final docbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.amber,
      child : MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        minWidth: MediaQuery.of(context).size.width * 0.7,
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Registrationscreen()));
        },
        child: Text("Doctor", textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
      ),

    );
    final patientbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.amber,
      child : MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        minWidth: MediaQuery.of(context).size.width * 0.7,

        onPressed: () {
        //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Docscreen()));
        },
        child: Text("Patient", textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
      ),

    );
    final pharmbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.amber,
      child : MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        minWidth: MediaQuery.of(context).size.width*0.7,
        onPressed: () {
         // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Docscreen()));
        },
        child: Text("Pharma", textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
      ),

    );
    final wholesaler = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.amber,
      child : MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        minWidth: MediaQuery.of(context).size.width*0.7,
        onPressed: () {
          //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Docscreen()));
        },
        child: Text("Wholesaler", textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
      ),

    );


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Select your role",
          style : TextStyle(color: Colors.white), ),centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.13,
              child: Image.asset('as/seltzer.png',
                fit: BoxFit.contain,),
            ),
            SizedBox(height: size.height * 0.04,),
            docbutton,
            SizedBox(height: size.height * 0.029,),
            patientbutton,
            SizedBox(height: size.height * 0.029,),
            pharmbutton,
            SizedBox(height: size.height * 0.029,),
            wholesaler
          ],
        ),
      ),
    );
  }
}
