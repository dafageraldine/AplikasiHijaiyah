import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hijaiyah/dataglobal.dart';

class Drawsome extends StatefulWidget {
  const Drawsome({ Key? key }) : super(key: key);

  @override
  _DrawsomeState createState() => _DrawsomeState();
}

class _DrawsomeState extends State<Drawsome> {

  List<Offset> points = [];

  

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(appBar: AppBar(title: Text("Menulis",style: TextStyle(fontSize: width * 0.045),),backgroundColor: Color.fromRGBO(16, 125, 172, 1)),
      
      backgroundColor: Color.fromRGBO(198, 222, 255, 1),
      body: Column(
          children: [
            SizedBox(height: width * 0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: width * 0.3,height: width * 0.2,color: Colors.white,child: 
                Image.asset("assets/$iter.jpg"),),
                Center(
              child: Container(width: width * 0.5,height: width * 0.2,decoration : BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
    ], ),child: Center(child: Text("Ayo menulis huruf hijaiyah dengan mengikuti gambar di atas",textAlign: TextAlign.center,)),),
            ),
              ],
            ),
            // SizedBox(height: width * 0.02,),
            SizedBox(height: width * 0.02,),Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                        onTap: (){
                          setState(() {
                          points.clear();
                            
                          });
                          // Navigator.of(context, rootNavigator: true)
                          // .push(MaterialPageRoute(builder: (context) => Drawsome()));
                        },
                                          child: Container(width: width * 0.4,height: width * 0.15,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(16, 125, 172, 1)
                        ),child: Center(child: Text("Hapus",style: TextStyle(color: Colors.white,fontSize: width * 0.04,fontWeight: FontWeight.w700),)),),
                      ),InkWell(
                    onTap: (){
                      // Navigator.of(context, rootNavigator: true)
                      // .push(MaterialPageRoute(builder: (context) => Drawsome()));
                    },
                                      child: Container(width: width * 0.4,height: width * 0.15,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(16, 125, 172, 1)
                    ),child: Center(child: Text("Selesai gambar",style: TextStyle(color: Colors.white,fontSize: width * 0.04,fontWeight: FontWeight.w700),)),),
                  ),
              ],
            ),
            SizedBox(height: width * 0.02,),
            Center(
      child: Container(
        width: width * 0.8,
        height: width * 1.2,
        color: Colors.white,
        child: GestureDetector(
          onPanUpdate: (details){
              this.setState(() {
                points.add(details.localPosition);
              });
          },
          onPanDown: (details){
              this.setState(() {
                points.add(details.localPosition);
              });
          },
          onPanEnd: (details){
              this.setState(() {
                
                
              });
          },
          child: CustomPaint(
              painter: MyCustomPainter(
                points: points
              ) ,
          ),
        ),
      ),
              ),
            
            //       SizedBox(height: width * 0.05,),SizedBox(height: width * 0.1,)
          ],
        )
    );
  }
}

class MyCustomPainter extends CustomPainter{

  

  List<Offset> points;

  MyCustomPainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    Paint background = Paint()..color= Colors.white;
    Rect rect = Rect.fromLTWH(0, 0, size.width * 0.2, size.width * 0.2);
    canvas.drawRect(rect, background);
    Paint paint = Paint();
    paint.color = Colors.black;
    paint.strokeWidth = 10.0;
    paint.isAntiAlias = true;
    paint.strokeCap = StrokeCap.round;

    for(int i = 0; i<points.length;i++){
      if(points[i]!=null && points[i+1]!=null){
        canvas.drawLine(points[i], points[i], paint);
        // canvas.drawPoints(PointMode.points, [points[i]], paint);
      } 
      // else if (points[i]!=null&& points[i+1] == null){
      //   canvas.drawPoints(PointMode.points, [points[i]], paint);
      // }
    }
      // TODO: implement paint
    }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}