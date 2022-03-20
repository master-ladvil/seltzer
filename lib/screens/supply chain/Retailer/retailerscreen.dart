import 'package:flutter/material.dart';
import 'package:seltzer_build1/screens/login.dart';
import 'package:seltzer_build1/screens/supply%20chain/Retailer/widget/retailerbottomnav.dart';







class Retailerscreen extends StatefulWidget {
  const Retailerscreen({Key? key}) : super(key: key);

  @override
  _RetailerscreenState createState() => _RetailerscreenState();
}

class _RetailerscreenState extends State<Retailerscreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Welcome Retailer",
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
                      child: Image.asset("as/retailer.png", fit: BoxFit.contain,),),SizedBox(height: size.height*0.05,),
                    Text("Retailer",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: size.height*0.03,),
                    Text("Retailer Id: 686868",
                      style: TextStyle(
                        fontSize: 10,
                      ),),
                    SizedBox(height: size.height*0.01,),
                    Text("Email : retailer@gmail.com",
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
            RetailerBottombar(),

          ],
        ),
      ),
    );
  }
}

