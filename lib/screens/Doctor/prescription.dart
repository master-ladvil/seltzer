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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter prescription",
          style : TextStyle(color: Colors.white), ),centerTitle: true,
      ),
      /*body: Center(
        child: SingleChildScrollView(
          child: Container(

            color: Colors.white,
            child :Padding(
              padding: const EdgeInsets.all(36),
              child: Form(
                key : _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    SizedBox(
                      height: heightofscreeen * 0.13,
                      child: Image.asset('as/seltzer.png',
                        fit: BoxFit.contain,),
                    ),
                    SizedBox(height: size.height * 0.04,),
                    fullnamefield,
                    SizedBox(height: size.height * 0.029),
                    hospitalnamefield,
                    SizedBox(height: size.height * 0.029,),
                    doctoridfield,
                    SizedBox(height: size.height * 0.029,),
                    emailfeld,
                    SizedBox(height: size.height * 0.029,),
                    passwordfield,
                    SizedBox(height: size.height * 0.029,),
                    confirmpasswordfield,
                    SizedBox(height: size.height * 0.038,),
                    signupbutton
                  ],
                ),
              ),
            ),
          ),
        ),
      ),*/
    );
  }
}
