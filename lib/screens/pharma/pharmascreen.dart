import 'package:flutter/material.dart';
import 'package:seltzer_build1/screens/pharma/widget/bottomnav.dart';

import '../login.dart';


class Pharmascreen extends StatefulWidget {
  const Pharmascreen({Key? key}) : super(key: key);

  @override
  _PharmascreenState createState() => _PharmascreenState();
}

class _PharmascreenState extends State<Pharmascreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Med store", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Stack(
        children : [
          PharmBottombar(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children : <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: size.height * 0.15,
                      child: Image.asset("as/pharma.png", fit: BoxFit.contain,),),SizedBox(height: size.height*0.03,),
                    Text("Med Store Dindigul",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: size.height*0.03,),
                    Text("Retailer Id: 545454",
                      style: TextStyle(
                        fontSize: 10,
                      ),),
                    SizedBox(height: size.height*0.01,),
                    Text("Email :Medstore@gmail.com",
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
            ]

        ),
      ]
      ),

    );
  }
}
