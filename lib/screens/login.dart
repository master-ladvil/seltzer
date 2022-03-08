import 'package:flutter/material.dart';
import 'package:seltzer_build1/screens/Doctor/docscreen.dart';

import 'package:seltzer_build1/screens/pharma/pharmascreen.dart';
import 'package:seltzer_build1/screens/registration.dart';
import 'package:seltzer_build1/screens/role.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  //form key
  final _formkey = GlobalKey<FormState>();

  final TextEditingController emailcontroller = new TextEditingController();
  final TextEditingController passwordcontroller = new TextEditingController();


  @override



  Widget build(BuildContext context) {
    final double heightofscreeen = MediaQuery.of(context).size.height;
    //email field
    TextEditingController controller;
    final emailfield = TextFormField(

      autofocus: false,
      controller: controller = emailcontroller,
      keyboardType: TextInputType.emailAddress,
      //validator () {}
      onSaved: (value) {
        emailcontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "email",
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),
    );

    //password field
    final passwordfield = TextFormField(
      autofocus: false,
      controller: controller = passwordcontroller,
      obscureText: true,
      //validator () {}
      onSaved: (value) {
        passwordcontroller.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );


    final loginbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
        color: Colors.amber,
      child : MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Docscreen()));
        },
        child: Text("Login", textAlign: TextAlign.center,
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
                      height: 200,
                      child: Image.asset('as/seltzerlogo.png',
                      fit: BoxFit.contain,),

                    ),
                    SizedBox(
                      height: heightofscreeen * 0.28,
                    ),

                    emailfield,
                    SizedBox(height: 25,),
                    passwordfield,
                    SizedBox(height: 35),
                    loginbutton,
                    SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account ? "),
                      GestureDetector(onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                                Roleselection()));
                      },
                        child: Text("Signup",
                        style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold, fontSize: 15,
                        ),)

                      )
                    ],
                  ),],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


