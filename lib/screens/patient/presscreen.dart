import 'package:flutter/material.dart';

import 'package:seltzer_build1/color_filters.dart';
import 'package:seltzer_build1/screens/pharma/presdoop.dart';

class PDrugscreen extends StatefulWidget {
  const PDrugscreen({Key? key}) : super(key: key);

  @override
  _PDrugscreenState createState() => _PDrugscreenState();
}

class _PDrugscreenState extends State<PDrugscreen> {

  late TextEditingController controller;

  final patientidcontroller = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    final fullnamefield = Row(
      children: [
        Expanded(
          flex: 3,
          child: TextFormField(

            autofocus: false,
            controller: controller = patientidcontroller,
            keyboardType: TextInputType.name,
            //validator () {}
            onSaved: (value) {
              patientidcontroller.text = value!;
            },
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                fillColor: Colors.amber,
                prefixIcon: Icon(Icons.person_sharp),
                contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                hintText: " Enter the PatientID",
                border: UnderlineInputBorder(

                    borderRadius: BorderRadius.circular(10)
                )
            ),
          ),
        ), Expanded(
            flex: 1,
            child: ElevatedButton(onPressed: () {}, child: Row(
              children: [
                Text("Search"),
                Icon(Icons.search),


              ],
            ),)
        )
      ],);


    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Drug Viewer", style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(

              children: [
                Text("Recent Prescriptions",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 1,
                      color: Colors.amber
                  ),),
                SizedBox(height: size.height * 0.029),
                buildQuotecard(),
                SizedBox(height: size.height * 0.029,),


              ],
            ),
          ),
        )
    );
  }

  Widget buildQuotecard() =>
      Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              child: Ink.image(
                image: AssetImage("as/presdoop.jpg"),
                colorFilter: ColorFilters.greyscale,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => (Presdoop())));
                  },
                ),
                height: 240,
                fit: BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "UserID : 87854",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18
                ),
              ),
            )
          ],
        ),
      );
}