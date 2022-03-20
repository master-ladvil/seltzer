import 'package:flutter/material.dart';
import 'package:seltzer_build1/screens/supply%20chain/manafacturer/stock.dart';




class BNBCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color= Colors.amberAccent..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0,20);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width*0.60, 20),
        radius: Radius.circular(10.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width , 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}


class ManaBottombar extends StatefulWidget {
  const ManaBottombar({Key? key}) : super(key: key);

  @override
  _ManaBottombarState createState() => _ManaBottombarState();
}

class _ManaBottombarState extends State<ManaBottombar> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children : [
        Positioned(
          bottom : 0,
          left : 0,
          child: Container(
              width: MediaQuery.of(context).size.width,
              height:80,
              child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(size.width, 80),
                      painter: BNBCustomPainter(),
                    ),
                    Center(
                        heightFactor: 0.6,
                        child: FloatingActionButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => (Manastock())));
                        },

                          backgroundColor: Colors.amber,
                          child: Icon(Icons.add,color: Colors.white,),)),
                    Container(
                      width: size.width,
                      height: size.height,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(onPressed: (){
                            //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => (Prescriptionscreen())));
                          }, icon: Icon(Icons.home)),
                          Container(width: size.width*0.01),
                          IconButton(onPressed: (){}, icon: Icon(Icons.person))
                        ],
                      ),
                    )
                  ]
              )
          ),
        )],

    );

  }
}