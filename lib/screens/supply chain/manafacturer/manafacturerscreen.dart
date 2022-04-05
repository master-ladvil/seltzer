import 'package:flutter/material.dart';
import 'package:seltzer_build1/screens/login.dart';
import 'package:seltzer_build1/screens/roleselection.dart';
import 'package:seltzer_build1/screens/supply%20chain/manafacturer/Widget/manabottombar.dart';








class Manascreen extends StatefulWidget {
  const Manascreen({Key? key}) : super(key: key);

  @override
  _ManascreenState createState() => _ManascreenState();
}

class _ManascreenState extends State<Manascreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Welcome Manafacturer",
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
                      child: Image.asset("as/mana.png", fit: BoxFit.contain,),),SizedBox(height: size.height*0.05,),
                    Text("Manafacturer",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(height: size.height*0.03,),
                    Text("Manafacturer Id: 7878787",
                      style: TextStyle(
                        fontSize: 10,
                      ),),
                    SizedBox(height: size.height*0.01,),
                    Text("Email : Manafacturer@gmail.com",
                        style: TextStyle(
                          fontSize: 10,
                        )),
                    SizedBox(height: 15,),
                    ActionChip(label: Text("logout"), onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PostRoleselection()));
                    },
                      backgroundColor: Colors.amber,
                    )
                  ],),),),
            ManaBottombar(),

          ],
        ),
      ),
    );
  }
}

