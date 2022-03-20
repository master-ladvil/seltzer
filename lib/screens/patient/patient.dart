import 'package:flutter/material.dart';
import 'package:seltzer_build1/screens/login.dart';
import 'package:seltzer_build1/screens/patient/Widget/patientbottomnav.dart';








class Patscreen extends StatefulWidget {
  const Patscreen({Key? key}) : super(key: key);

  @override
  _PatscreenState createState() => _PatscreenState();
}

class _PatscreenState extends State<Patscreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Welcome Surya",
          style : TextStyle(color: Colors.white), ),centerTitle: true,
      ),
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: size.height * 0.15,
                      child: CircleAvatar(
                          backgroundImage:
                            AssetImage("as/surya.ico", ),
                        radius: 90.0,
                      ),),
                      // Image.asset("as/patient.png", fit: BoxFit.contain,),),
                    SizedBox(height: size.height*0.04,),
                    Text("Patient",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: size.height*0.03,),
                    Text("Patient Id:585421877",
                      style: TextStyle(
                        fontSize: 10,
                      ),),
                    SizedBox(height: size.height*0.01,),
                    Text("Email : simplesuryaprakash@gmail.com",
                        style: TextStyle(
                          fontSize: 10,
                        )),
                    SizedBox(height: 15,),
                    ActionChip(label: Text("logout"), onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                      backgroundColor: Colors.amber,
                    )
                  ],),),),
            PatBottombar(),

          ],
        ),
      ),
    );
  }
}

