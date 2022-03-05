import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'login.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  final url = "https://seltzer.herokuapp.com/reg/doc";

  var _postjson = [];

  void fetchdoctors() async {
    try {
      final response = await get(Uri.parse(url));
      final jsondata = jsonDecode(response.body) as List;

      setState(() {
        _postjson = jsondata;
      });

    }catch(err){}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchdoctors();
  }

  @override

  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final post = _postjson[0];
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Welcome Doc",
        style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenheight * 0.15,
                child: Image.asset("as/seltzer.png", fit: BoxFit.contain,),
              ),
              SizedBox(height: screenheight*0.05,),
              Text("Welcome ${post["fullname"]}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: screenheight*0.03,),
              Text("Doc Id: ${post["doctorId"]}",
                style: TextStyle(
                    fontSize: 10,
                ),),
              SizedBox(height: screenheight*0.01,),
              Text("Email : ${post["email"]}",
                style: TextStyle(
                  fontSize: 10,
                )),
              SizedBox(height: 15,),
              ActionChip(label: Text("logout"), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
              },
              backgroundColor: Colors.amber,
              )
            ],
          ),
        ),
      ),

    );
  }
}

