import 'package:flutter/material.dart';
import 'package:hijaiyah/canvas.dart';
import 'package:hijaiyah/dataglobal.dart';

class Menulis extends StatefulWidget {
  const Menulis({ Key? key }) : super(key: key);

  @override
  _MenulisState createState() => _MenulisState();
}

class _MenulisState extends State<Menulis> {
  int counter = 1;
  String teks = "Alif";

  void next(){
    print(counter);
    if(counter <24){
      counter = counter +1;
      teks = data[counter];
      setState(() {
        
      });
    }
  }

  void back(){
    print(counter);
    if(counter>1){
      counter = counter-1;
      teks = data[counter];
      setState(() {
        
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
       appBar: AppBar(title: Text("Pilih Huruf Hijaiyah",style: TextStyle(fontSize: width * 0.045),),backgroundColor: Color.fromRGBO(16, 125, 172, 1)),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: 
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width *0.025,top: width * 0.8),
                child: InkWell(
                  onTap: (){
                    back();
                  },
                                  child: Container(width: width * 0.1,height: width * 0.1,decoration : BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
    ], ),child: Center(child: Icon(Icons.arrow_back_ios_new_rounded)),),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: width * 0.8,left: width * 0.875),
                child: InkWell(
                  onTap: (){
                    next();
                  },
                                  child: Container(width: width * 0.1,height: width * 0.1,decoration : BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
    ], ),child: Center(child: Icon(Icons.arrow_forward_ios_rounded)),),
                ),
              ),
              
              Column(
                children: [
                  SizedBox(height: width * 0.5,),
                  Text(teks,style: TextStyle(fontWeight: FontWeight.w700, fontSize: width * 0.08),),
                  SizedBox(height: width * 0.2,),
                  Center(
                    child: Container(width: width * 0.3,height: width * 0.3,color: Colors.amber,child: 
                  Image.asset("assets/$counter.jpg"),),
                  ),
                  SizedBox(height: width * 0.4,),
                  InkWell(
                    onTap: (){
                      iter = counter;
                      Navigator.of(context, rootNavigator: true)
                      .push(MaterialPageRoute(builder: (context) => Drawsome()));
                    },
                                      child: Container(width: width * 0.8,height: width * 0.15,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(16, 125, 172, 1)
                    ),child: Center(child: Text("Mulai Menulis",style: TextStyle(color: Colors.white,fontSize: width * 0.04,fontWeight: FontWeight.w700),)),),
                  ),
                  
    //               Center(
    //                 child: Container(width: width * 0.8,height: width * 0.2,decoration : BoxDecoration(
    //                   borderRadius: BorderRadius.circular(10),
    //                   color: Colors.white,
    //                   boxShadow: [
    //           BoxShadow(
    //             color: Colors.grey.withOpacity(0.5),
    //             spreadRadius: 5,
    //             blurRadius: 7,
    //             offset: Offset(0, 3), // changes position of shadow
    //           ),
    // ], ),child: Center(child: Text("Ayo menulis huruf hijaiyah dengan mengikuti gambar di atas",textAlign: TextAlign.center,)),),
    //               ),

                  // SizedBox(height: width * 0.1,),
                  // Container(width: width * 0.6,height: width * 0.8,color: Colors.red,)
                ],
              ),
            ],
          ),
        
      ),
    );
  }
}