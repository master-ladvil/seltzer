import 'package:flutter/material.dart';

class Registrationscreen extends StatefulWidget {
  const Registrationscreen({Key? key}) : super(key: key);

  @override
  _RegistrationscreenState createState() => _RegistrationscreenState();
}

class _RegistrationscreenState extends State<Registrationscreen> {

  //FORM KEY
  final _formkey = GlobalKey<FormState>();
  //controlers
  final firstnameeditingcontroller = new TextEditingController();
  final secondmameeditingcontroller = new TextEditingController();
  final hospitalnameeditingcontroller = new TextEditingController();
  final doctorIDeditingcontroller = new TextEditingController();
  final emaileditingcontroller = new TextEditingController();
  final passwordeditingcontroller = new TextEditingController();
  final confirmpasswordeditingcontroller = new TextEditingController();



  @override
  Widget build(BuildContext context) {


    TextEditingController controller;

    final double heightofscreeen = MediaQuery.of(context).size.height;

    final firstnamefield = TextFormField(

      autofocus: false,
      controller: controller = firstnameeditingcontroller,
      keyboardType: TextInputType.name,
      //validator () {}
      onSaved: (value) {
        firstnameeditingcontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "FirstName",
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );

    final secondnamefield = TextFormField(

      autofocus: false,
      controller: controller = secondmameeditingcontroller,
      keyboardType: TextInputType.name,
      //validator () {}
      onSaved: (value) {
        secondmameeditingcontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "SecondName",
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );

    final hospitalnamefield = TextFormField(

      autofocus: false,
      controller: controller = hospitalnameeditingcontroller,
      keyboardType: TextInputType.name,
      //validator () {}
      onSaved: (value) {
        hospitalnameeditingcontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.local_hospital),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Hospital Name",
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );

    final doctoridfield = TextFormField(

      autofocus: false,
      controller: controller = doctorIDeditingcontroller,
      //validator () {}
      onSaved: (value) {
        doctorIDeditingcontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.credit_card_outlined),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "DoctorID",
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );

    final emailfeld = TextFormField(

      autofocus: false,
      controller: controller = emaileditingcontroller,
      keyboardType: TextInputType.emailAddress,
      //validator () {}
      onSaved: (value) {
        emaileditingcontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "email",
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );

    final passwordfield = TextFormField(

      obscureText: true,
      autofocus: false,
      controller: controller = passwordeditingcontroller,

      //validator () {}
      onSaved: (value) {
        passwordeditingcontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );

    final confirmpasswordfield = TextFormField(

      obscureText: true,
      autofocus: false,
      controller: controller = confirmpasswordeditingcontroller,

      //validator () {}
      onSaved: (value) {
        confirmpasswordeditingcontroller.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password",
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );

//signup button
    final signupbutton = Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(30),
      color: Colors.amber,
      child : MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        minWidth: MediaQuery.of(context).size.width * 0.7,
        height : MediaQuery.of(context).size.height * 0.01,
        onPressed: () {},
        child: Text("Signup", textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
      ),

    );
    return Scaffold(

      backgroundColor: Colors.white,
      body: Center(
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
                  children: <Widget>[

                    SizedBox(
                      height: heightofscreeen * 0.13,
                      child: Image.asset('as/seltzer.png',
                        fit: BoxFit.contain,),
                    ),
                    SizedBox(height: heightofscreeen * 0.04,),
                    firstnamefield,
                    SizedBox(height: heightofscreeen * 0.029,),
                    secondnamefield,
                    SizedBox(height: heightofscreeen * 0.029),
                    hospitalnamefield,
                    SizedBox(height: heightofscreeen * 0.029,),
                    doctoridfield,
                    SizedBox(height: heightofscreeen * 0.029,),
                    emailfeld,
                    SizedBox(height: heightofscreeen * 0.029,),
                    passwordfield,
                    SizedBox(height: heightofscreeen * 0.029,),
                    confirmpasswordfield,
                    SizedBox(height: heightofscreeen * 0.038,),
                    signupbutton
                    ],
                ),
              ),
            ),
          ),
        ),
      ),
    );;
  }
}
