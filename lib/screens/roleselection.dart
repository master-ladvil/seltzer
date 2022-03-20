import 'package:flutter/material.dart';
import 'package:seltzer_build1/screens/patient/patient.dart';
import 'package:seltzer_build1/screens/pharma/pharmascreen.dart';
import 'package:seltzer_build1/screens/registration.dart';
import 'package:seltzer_build1/screens/supply%20chain/Retailer/retailerscreen.dart';
import 'package:seltzer_build1/screens/supply%20chain/Wholesaler/salerscreen.dart';
import 'package:seltzer_build1/screens/supply%20chain/manafacturer/manafacturerscreen.dart';

import 'Doctor/docscreen.dart';

class PostRoleselection extends StatefulWidget {
  const PostRoleselection({Key? key}) : super(key: key);

  @override
  _PostRoleselectionState createState() => _PostRoleselectionState();
}

class _PostRoleselectionState extends State<PostRoleselection> {
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
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Docscreen()));
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
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Patscreen()));
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
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Pharmascreen()));
        },
        child: Text("Pharma", textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
      ),

    );


    final retailerbutton = Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        color: Colors.amber,
        child : MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15) ,
          minWidth: MediaQuery.of(context).size.width*0.7,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Retailerscreen()));
          },
          child: Text("retailer", textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),),
        ),
    );

    final manafacturerbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.amber,
      child : MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        minWidth: MediaQuery.of(context).size.width*0.7,
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Manascreen()));
        },
        child: Text("Manafacturer", textAlign: TextAlign.center,
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => Salerscreen()));
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
            wholesaler,
            SizedBox(height: size.height * 0.029,),
            retailerbutton,
            SizedBox(height: size.height * 0.029,),
            manafacturerbutton
          ],
        ),
      ),
    );
  }
}
