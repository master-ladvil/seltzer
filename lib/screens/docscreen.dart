import 'package:flutter/material.dart';
import '../widgets/bottombar.dart';
import 'login.dart';


class Docscreen extends StatefulWidget {
  const Docscreen({Key? key}) : super(key: key);

  @override
  _DocscreenState createState() => _DocscreenState();
}

class _DocscreenState extends State<Docscreen> {
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
                      child: Image.asset("as/seltzer.png", fit: BoxFit.contain,),),SizedBox(height: size.height*0.05,),
                    Text("Dr. Bumblebee",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: size.height*0.03,),
                    Text("Doc Id: 545454",
                      style: TextStyle(
                        fontSize: 10,
                      ),),
                    SizedBox(height: size.height*0.01,),
                    Text("Email : hraja@gmail.com",
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
                 Bottombar(),

          ],
        ),
      ),
    );
  }
}

