import 'package:flutter/material.dart';

class Prescriptionscreen extends StatefulWidget {
  const Prescriptionscreen({Key? key}) : super(key: key);

  @override
  _PrescriptionscreenState createState() => _PrescriptionscreenState();
}

class _PrescriptionscreenState extends State<Prescriptionscreen> {


  final _formkey = GlobalKey<FormState>();
  //controlers
  final docnamecontroller = new TextEditingController();
  final docIdcontroller = new TextEditingController();
  final patientanamecontroller = new TextEditingController();
  final doctorIDeditingcontroller = new TextEditingController();
  final emaileditingcontroller = new TextEditingController();
  final passwordeditingcontroller = new TextEditingController();
  final confirmpasswordeditingcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
