import 'package:flutter/material.dart';

class Petunjuk extends StatefulWidget {
  const Petunjuk({ Key? key }) : super(key: key);

  @override
  _PetunjukState createState() => _PetunjukState();
}

class _PetunjukState extends State<Petunjuk> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("PETUNJUK",style: TextStyle(fontSize: width * 0.045),),backgroundColor: Color.fromRGBO(1, 46, 109, 1),),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: width * 0.1,),
          Text("Berikut Petunjuk penggunaan Aplikasi"),
          SizedBox(height: width * 0.1,),
          Container(
            width: width * 0.8,
            child: Text("1. Klik tombol “Mulai” untuk masuk ke halaman menulis",)),
          SizedBox(height: width * 0.05,),
          Container(
            width: width * 0.8,
            child: Text("2. Tulislah huruf hijaiyah dengan mengikuti garis yang telah disediakan.",textAlign: TextAlign.justify)),
          SizedBox(height: width * 0.05,),
          Container(
            width: width * 0.8,
            child: Text("3. Menulis huruf hijaiyah dimulai dari kanan ke kiri sesuai kaidah penulisan arab.")),
          SizedBox(height: width * 0.05,),
          Container(
            width: width * 0.8,
            child: Text("4.Ketika huruf yang ditulis sudah benar, maka akan terdengar pelafalan huruf hijaiyah tersebut.")),
          SizedBox(height: width * 0.05,),
          Center(
            child: Container(
              width: width * 0.8,
              child: Text("5. Panah kanan dan kiri digunakan untuk mengganti huruf yang akan ditulis.")),
          ),
          SizedBox(height: width * 0.05,),
          Container(
            width: width * 0.8,
            child: Text("6. Selamat mencoba."))
        ],
      ),
    );
  }
}