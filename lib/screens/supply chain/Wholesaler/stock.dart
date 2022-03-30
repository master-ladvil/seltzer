import 'package:flutter/material.dart';
import 'package:seltzer_build1/screens/supply%20chain/Wholesaler/salerscreen.dart';

import '../../../API/local_auth_api.dart';

class Wholestock extends StatefulWidget {
  const Wholestock({Key? key}) : super(key: key);

  @override
  _WholestockState createState() => _WholestockState();
}

class _WholestockState extends State<Wholestock> {

  final _formkey = GlobalKey<FormState>();
  //controlers
  final wholesalercontroller = new TextEditingController();
  final drugscontroller = new TextEditingController();
  final amountcontroller = new TextEditingController();
  final strengthcontroller = new TextEditingController();
  final batchcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    TextEditingController controller;

    final wholesalerfeild = Column(
      children: [
        TextFormField(
          autofocus: false,
          controller: controller = wholesalercontroller,
          keyboardType: TextInputType.name,
          //validator () {}
          onSaved: (value) {
            wholesalercontroller.text = value!;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.credit_card_outlined),
              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: "Retailer Id",
              border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
              )
          ),
        ),
      ],
    );

    final drugname = Column(
      children: [
        TextFormField(
          autofocus: false,
          controller: controller = drugscontroller,
          keyboardType: TextInputType.name,
          //validator () {}
          onSaved: (value) {
            drugscontroller.text = value!;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.local_hospital),
              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: "Drug Name",
              border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
              )
          ),
        ),
      ],
    );
    final batchno = Column(
      children: [
        TextFormField(
          autofocus: false,
          controller: controller = batchcontroller,
          keyboardType: TextInputType.name,
          //validator () {}
          onSaved: (value) {
            batchcontroller.text = value!;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.local_hospital),
              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: "Batch Number",
              border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
              )
          ),
        ),
      ],
    );

    final submitbutton = Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(30),
      color: Colors.amber,
      child : MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        minWidth: MediaQuery.of(context).size.width * 0.7,
        height : MediaQuery.of(context).size.height * 0.01,
        onPressed: ()  async {
          final isAuthenticated = await LocalAuthApi.authenticate();
          if (isAuthenticated) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Salerscreen()));
          }
        },
        child: Text("Submit", textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
      ),

    );

    final doseandquantity = Row(
      children: [
        Expanded(child: TextFormField(
          autofocus: false,
          controller: controller = amountcontroller,
          keyboardType: TextInputType.name,
          //validator () {}
          onSaved: (value) {
            amountcontroller.text = value!;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.scale),
              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: "Strength",
              border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
              )
          ),
        )),
        Expanded(child: TextFormField(
          autofocus: false,
          controller: controller = strengthcontroller,
          keyboardType: TextInputType.name,
          //validator () {}
          onSaved: (value) {
            strengthcontroller.text = value!;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.scale),
              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: "Quantity",
              border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
              )
          ),
        ))
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Stock Details", style: TextStyle(color: Colors.white, letterSpacing: 1), ),
        centerTitle: true,

      ),

      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: size.height*0.12,),
            Center(
              child: Text("Wholesaler Id : WH8754554",
                  style: TextStyle(fontSize: 24, color: Colors.amber, fontWeight: FontWeight.bold)
              ),
            ),
            Text("enter details", style:  TextStyle(fontSize: 18, color: Colors.grey),),
            //wholesalerfield,
            SizedBox(height: size.height*0.12,),
            drugname,
            doseandquantity,
            batchno,
            wholesalerfeild,
            SizedBox(height: size.height * 0.15,),
            submitbutton


          ],
        ),
      ),
    );
  }
}
