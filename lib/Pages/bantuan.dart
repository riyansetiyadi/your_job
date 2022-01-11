import 'dart:ui';

import 'package:flutter/material.dart';
class Bantuan extends StatelessWidget {
  // const Bantuan({Key? key}) : super(key: key);

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
              Text("Bantuan",style: TextStyle(color: Colors.black),),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: 5,),
              for(int i=0;i<listBantuan.length;i++)

                Card(
                    color: Color(0xFF8EC0E7),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(listBantuan[i],style: TextStyle(fontSize: 20),),
                    )),
                SizedBox(height: 5,),





            ],
          ),
        ),
      ),
    );
  }
}

var listBantuan = [
  "Klik menu Tentukan Karir untuk mengetahui apa karirmu di masa depan",
  "Masukkan nilai-nilai Anda pada daftar mata kuliah yang kami sediakan. Inputkannya dalam bentuk huruf ya (A, AB, B, BC, C, CD, D, DE, E, EF, F)",
  "Setelah semuanya selesai, klik tombol Tentukan Karir. Maka selanjutnya akan muncul presentase kemungkinan karirmu",
  "Jika masih bingung dengan hasil karir Anda, silahkan klik menu Daftar Bidang Karir. Di menu tersebut terdapat penjelasan karir-karir secara detail, seperti apa karir tersebut dan apa saja tugasnya.",
  "Jika ingin mengetahui tentang aplikasi YourJob, klik menu Tentang Kami."
];