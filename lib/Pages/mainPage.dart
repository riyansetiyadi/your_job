import 'package:flutter/material.dart';
import 'package:sppk/Pages/home.dart';
import 'package:sppk/transitionRoute.dart';
class MainPage extends StatelessWidget {
  // const Opening({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF8EC0E7),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("icon/logoOpening.png")
                    )
                ),


              ),
              Builder(builder: (context){
                return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(10)
                    ),
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                        return HomePage();
                      }));
                    },
                    child: Container(
                      width: double.infinity,
                        child: Center(child: Text("Mulai",style: TextStyle(fontSize: 25),)))
                );
              })
            ],
          ),
        ),
        ),
    );
  }
}
