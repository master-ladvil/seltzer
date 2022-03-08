import 'package:flutter/material.dart';

class Prescriptionscreen extends StatefulWidget {
  const Prescriptionscreen({Key? key}) : super(key: key);

  @override
  _PrescriptionscreenState createState() => _PrescriptionscreenState();
}

class _PrescriptionscreenState extends State<Prescriptionscreen> {


  final _formkey = GlobalKey<FormState>();
  //controlers
  final patientnameandidcontroller = new TextEditingController();
  final patientidcontroller = new TextEditingController();
  final drugnamecontroller = new TextEditingController();
  final dosecontroller = new TextEditingController();
  final quantitycontroller = new TextEditingController();



  bool value = false;
  bool value1 = false;
  bool value2 = false;
  bool beforefood = false;
  bool afterfood = false;

  bool tvalue = false;
  bool tvalue1 = false;
  bool tvalue2 = false;
  bool tbeforefood = false;
  bool tafterfood = false;

  bool dvalue = false;
  bool dvalue1 = false;
  bool dvalue2 = false;
  bool dbeforefood = false;
  bool dafterfood = false;

  bool lvalue = false;
  bool lvalue1 = false;
  bool lvalue2 = false;
  bool lbeforefood = false;
  bool lafterfood = false;

  //final datecontroller  = new TextEditingController();
  //final doctorIDeditingcontroller = new TextEditingController();
  //final emaileditingcontroller = new TextEditingController();
  //final passwordeditingcontroller = new TextEditingController();
  //final confirmpasswordeditingcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    TextEditingController controller;
    final patientnameandid = Row(children:[
      Expanded(
        child: TextFormField(
          autofocus: false,
          controller: controller = patientnameandidcontroller,
          keyboardType: TextInputType.name,
          //validator () {}
          onSaved: (value) {
            patientnameandidcontroller.text = value!;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: "PatientName",
              border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
            )
          ),
        ),
      ),
      Expanded(
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
              prefixIcon: Icon(Icons.credit_card_outlined),
              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: "Patient ID",
              border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
              )
          ),
        ),
      ),
    ]);
    final drugname = Column(
      children: [
        TextFormField(
        autofocus: false,
        controller: controller = drugnamecontroller,
        keyboardType: TextInputType.name,
        //validator () {}
        onSaved: (value) {
          drugnamecontroller.text = value!;
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

    final drugname2 = Column(
      children: [
        TextFormField(
          autofocus: false,
          controller: controller = drugnamecontroller,
          keyboardType: TextInputType.name,
          //validator () {}
          onSaved: (value) {
            drugnamecontroller.text = value!;
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


    final doseandquantity = Row(
      children: [
        Expanded(child: TextFormField(
          autofocus: false,
          controller: controller = dosecontroller,
          keyboardType: TextInputType.name,
          //validator () {}
          onSaved: (value) {
            dosecontroller.text = value!;
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
          controller: controller = quantitycontroller,
          keyboardType: TextInputType.name,
          //validator () {}
          onSaved: (value) {
            quantitycontroller.text = value!;
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

    final doseandquantity2 = Row(
      children: [
        Expanded(child: TextFormField(
          autofocus: false,
          controller: controller = dosecontroller,
          keyboardType: TextInputType.name,
          //validator () {}
          onSaved: (value) {
            dosecontroller.text = value!;
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
          controller: controller = quantitycontroller,
          keyboardType: TextInputType.name,
          //validator () {}
          onSaved: (value) {
            quantitycontroller.text = value!;
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
    final duration = Column(children: [
      Row(
        children: [
          Expanded(
            child: CheckboxListTile(value: value,
              onChanged: (value) =>
                  setState(() => this.value = value! ) ,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Morn"),),
          ),
          Expanded(
            child: CheckboxListTile(value: beforefood,
              onChanged: (value) =>
                  setState(() => this.beforefood = value! ) ,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('bef'),),
          ),
          Expanded(
            child: CheckboxListTile(value: afterfood,
              onChanged: (value) =>
                  setState(() => this.afterfood = value! ) ,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('after'),),
          ),
    ],),
        Row(
          children: [
            Expanded(
              child: CheckboxListTile(value: lvalue1,
                onChanged: (value) =>
                    setState(() => this.lvalue1 = value! ) ,
                controlAffinity: ListTileControlAffinity.leading,

                title: Text("Lun"),),
            ),
            Expanded(
              child: CheckboxListTile(value: lbeforefood,
                onChanged: (value) =>
                    setState(() => this.lbeforefood = value! ) ,
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('bef'),),
            ),
            Expanded(
              child: CheckboxListTile(value: lafterfood,
                onChanged: (value) =>
                    setState(() => this.lafterfood = value! ) ,
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('after'),),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CheckboxListTile(value: dvalue2,
                onChanged: (value) =>
                    setState(() => this.dvalue2 = value! ) ,
                controlAffinity: ListTileControlAffinity.leading,
                title: Text("Dine"),),
            ),
            Expanded(
              child: CheckboxListTile(value: dbeforefood,
                onChanged: (value) =>
                    setState(() => this.dbeforefood = value! ) ,
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('bef'),),
            ),
            Expanded(
              child: CheckboxListTile(value: dafterfood,
                onChanged: (value) =>
                    setState(() => this.dafterfood = value! ) ,
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('after'),),
            ),
          ],
        ),
      ],
    );
    final duration2 = Column(children: [
      Row(
        children: [
          Expanded(
            child: CheckboxListTile(value: tvalue,
              onChanged: (value) =>
                  setState(() => this.tvalue = value! ) ,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Morn"),),
          ),
          Expanded(
            child: CheckboxListTile(value: tbeforefood,
              onChanged: (value) =>
                  setState(() => this.tbeforefood = value! ) ,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('bef'),),
          ),
          Expanded(
            child: CheckboxListTile(value: tafterfood,
              onChanged: (value) =>
                  setState(() => this.tafterfood = value! ) ,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('after'),),
          ),
        ],),
      Row(
        children: [
          Expanded(
            child: CheckboxListTile(value: tvalue1,
              onChanged: (value) =>
                  setState(() => this.tvalue1 = value! ) ,
              controlAffinity: ListTileControlAffinity.leading,

              title: Text("Lun"),),
          ),
          Expanded(
            child: CheckboxListTile(value: tbeforefood,
              onChanged: (value) =>
                  setState(() => this.tbeforefood = value! ) ,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('beforefood'),),
          ),
          Expanded(
            child: CheckboxListTile(value: tafterfood,
              onChanged: (value) =>
                  setState(() => this.tafterfood = value! ) ,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('after'),),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
            child: CheckboxListTile(value: tvalue2,
              onChanged: (value) =>
                  setState(() => this.tvalue2 = value! ) ,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Din"),),
          ),
          Expanded(
            child: CheckboxListTile(value: tbeforefood,
              onChanged: (value) =>
                  setState(() => this.tbeforefood = value! ) ,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('bef'),),
          ),
          Expanded(
            child: CheckboxListTile(value: tafterfood,
              onChanged: (value) =>
                  setState(() => this.tafterfood = value! ) ,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('after'),),
          ),
        ],
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
        onPressed: () {},
        child: Text("Submit", textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
      ),

    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Enter prescription",
          style : TextStyle(color: Colors.white), ),centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children : [

              //Text("Drug information", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,letterSpacing: 1,color: Colors.amber[700]),),
              SingleChildScrollView(

                  child: Column(
                    children : [
                      SizedBox(height: size.height*0.01,),
                      patientnameandid,
                      SizedBox(height: size.height*0.01,),
                      drugname,
                      SizedBox(height: size.height*0.01,),
                      doseandquantity,
                      SizedBox(height: size.height*0.01,),
                      duration,
                      SizedBox(height: size.height*0.01,),
                      drugname2,
                      SizedBox(height: size.height*0.01,),
                      doseandquantity2,
                      SizedBox(height: size.height*0.01,),
                      duration2,
                      SizedBox(height: size.height*0.03,),
                      submitbutton

                ]
              )),

            ]
          ),
        ),
      )
    );
  }
}
