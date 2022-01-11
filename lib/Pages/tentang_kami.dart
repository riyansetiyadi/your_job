import 'dart:ui';

import 'package:flutter/material.dart';
class TentangKami extends StatelessWidget {
  // const TentangKami({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),

      home: Scaffold(
        backgroundColor: Color(0xFF0099FF),
        appBar: AppBar(
          backgroundColor: Color(0xFF8EC0E7),
          title: Row(
            children: [
              IconButton(onPressed: (){
                Navigator.of(context).pop();
              }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
              Text("Tentang Your Job",style: TextStyle(color: Colors.black),),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: 5,),
              Card(
                color: Color(0xFF8EC0E7),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [

                        Text("YourJob adalah aplikasi pendukung keputusan pemilihan karir setelah lulus kuliah di Program Studi Sistem Informasi, Fakultas Ilmu Komputer, Universitas Jember.",style: TextStyle(fontSize: 20),),
                        SizedBox(height: 20,),
                        Text("YourJob akan merekomendasikan bidang karir berdasarkan nilai mata kuliah yang didapatkan sejak duduk di bangku perkuliahan.",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  )),
              SizedBox(height: 5,),



            ],
          ),
        ),
      ),
    );
  }
}
