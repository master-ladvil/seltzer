import 'package:flutter/material.dart';
import 'package:seltzer_build1/screens/login.dart';
import 'package:seltzer_build1/screens/supply%20chain/Wholesaler/Widget/salerbottomnav.dart';






class Salerscreen extends StatefulWidget {
  const Salerscreen({Key? key}) : super(key: key);

  @override
  _SalerscreenState createState() => _SalerscreenState();
}

class _SalerscreenState extends State<Salerscreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Welcome Doc",
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
                      child: Image.asset("as/wholesaler.png", fit: BoxFit.contain,),),SizedBox(height: size.height*0.05,),
                    Text("Drug Wholesaler",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: size.height*0.03,),
                    Text("Saler Id: 58585",
                      style: TextStyle(
                        fontSize: 10,
                      ),),
                    SizedBox(height: size.height*0.01,),
                    Text("Email : wholesaler@gmail.com",
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
            SalerBottombar(),

          ],
        ),
      ),
    );
  }
}

