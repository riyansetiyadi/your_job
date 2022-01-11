import 'dart:ui';

import 'package:flutter/material.dart';
class DaftarKarir extends StatelessWidget {
  // const DaftarKarir({Key? key}) : super(key: key);

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
              Text("Daftar Bidang Karir",style: TextStyle(color: Colors.black),),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: 5,),
              for(int i=0; i<listKarir.length;i++)
                Card(
                  color: Color(0xFF8EC0E7),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(listKarir[i][0],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          SizedBox(height: 10,),
                          Text(listKarir[i][1],style: TextStyle(fontSize: 20),),

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

var listKarir = [
  [
    "WEB CONTENT SPECIALIST",
    "Web Content Specialist bertugas membuat konten yang mempromosikan merek. Mereka bertanggung jawab untuk membuat dan menerapkan rencana konten dan salinan yang diposting di situs web. Sering kali, mereka juga ditugaskan membuat postingan media sosial untuk mempromosikan situs web itu dan kontennya. Mereka juga harus mampu membuat konten, baik itu salinan halaman beranda, blog, atau video, dan menggabungkan nya dengan elemen visual yang menarik.",
  ],
  [
    "BUSINESS PROCESS ANALYST",
    "Business Process Analyst bertugas menilai kebutuhan bisnis dan membuat rekomendasi untuk mendukung peningkatan proses. Mereka berfungsi sebagai perantara antara pengambil keputusan eksekutif, tim manajemen, dan profesional TI untuk melacak kinerja bisnis, melakukan pemetaan proses, dan mengidentifikasi inefisiensi internal. Mereka menganalisis, merancang, dan menerapkan proses bisnis untuk mempengaruhi perubahan, terutama ketika kebijakan dan prosedur baru yang diperkenalkan.",
  ],
  [
    "NETWORKING ADMINISTRATOR",
    "Networking Administrator adalah profesional TI yang memastikan bahwa jaringan komputer organisasi (kelompok komputer yang berbagi informasi satu sama lain) beroperasi untuk memenuhi kebutuhan organisasi. Mereka dapat memelihara dan memecahkan masalah jaringan komputer, dan menerapkan prinsip- prinsip keamanan untuk menjaga jaringan tetap aman.",
  ],

];