import 'package:flutter/material.dart';
import 'package:sppk/Pages/bantuan.dart';
import 'package:sppk/Pages/daftar_bidang_karir.dart';
import 'package:sppk/Pages/tentang_kami.dart';
import 'package:sppk/Pages/tentukan_karir.dart';
import 'package:sppk/transitionRoute.dart';
class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),

      home: Scaffold(
        backgroundColor: Color(0xFF0099FF),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: 20,),
              Column(
                children: [
                  Text(
                    "SELAMAT DATANG",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    "Klik menu Tentukan Karir untuk mengetahui apa karirmu di masa depan!",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Builder(builder: (context){
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, Transition(TentukanKarir()));
                          },
                          child: Card(
                            elevation: 5,
                            // color: Colors.red,

                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Container(

                                    width: double.infinity,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("icon/logo1.png")
                                        )
                                    ),
                                  ),
                                  Text("Tentukan Karir")
                                ],
                              ),
                            ),
                          ),
                        );
                      })
                    ),
                    Flexible(
                        fit: FlexFit.tight,
                        child: Builder(builder: (context){
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, Transition(DaftarKarir()));
                            },
                            child: Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Container(

                                      width: double.infinity,
                                      height: 200,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("icon/logo2.png")
                                          )
                                      ),
                                    ),
                                    Text("Daftar Bidang Karir")
                                  ],
                                ),
                              ),
                            ),
                          );
                        })
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Card(
                            elevation: 5,
                            // color: Colors.red,

                            child: Builder(builder: (context) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context, Transition(TentangKami()));
                                  // print("hello");
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Container(

                                        width: double.infinity,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "icon/logo3.png")
                                            )
                                        ),
                                      ),
                                      Text("Tentang Kami")
                                    ],
                                  ),
                                ),
                              );
                            }

                          )
                        )
                    ),
                    Flexible(
                        fit: FlexFit.tight,
                        child: Builder(builder: (context){
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, Transition(Bantuan()));
                            },
                            child: Card(
                              elevation: 5,
                              // color: Colors.red,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Container(

                                      width: double.infinity,
                                      height: 200,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("icon/logo4.png")
                                          )
                                      ),
                                    ),
                                    Text("Bantuan")
                                  ],
                                ),
                              ),
                            ),
                          );
                        })
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
