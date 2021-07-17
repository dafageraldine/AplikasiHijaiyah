import 'package:flutter/material.dart';
import 'package:hijaiyah/menulis.dart';
import 'package:hijaiyah/petunjuk.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(198, 222, 255, 1),
      body: Column(
        children: [
          SizedBox(height: width * 0.4,),
          Center(child: Text("NGAJI YUK",style: TextStyle(fontSize: width * 0.08,color: Color.fromRGBO(0, 80, 115, 1),fontWeight: FontWeight.w700),)),
          SizedBox(height: width * 0.4,),
          InkWell(
            onTap: (){
                  Navigator.of(context, rootNavigator: true)
                      .push(MaterialPageRoute(builder: (context) => Menulis()));},
                      child: Container(width: width * 0.4,height: width*0.18,decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(16, 125, 172, 1),
              ),child: Center(child: Text("Mulai",style: TextStyle(color: Colors.white,fontSize: width * 0.05),)),),
          ),
             SizedBox(height: width * 0.1,),
          InkWell(
            onTap: (){
                  Navigator.of(context, rootNavigator: true)
                      .push(MaterialPageRoute(builder: (context) => Petunjuk()));},
                      child: Container(width: width * 0.4,height: width*0.18,decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(16, 125, 172, 1)),child: Center(child: Text("Petunjuk",style: TextStyle(color: Colors.white,fontSize: width * 0.05),)),),
          )
        ],
      ),
    );
  }
}