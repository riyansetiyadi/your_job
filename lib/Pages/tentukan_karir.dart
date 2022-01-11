import 'package:flutter/material.dart';
import 'package:sppk/fuzzy.dart';

var dataInput = [
  "A","A","A","A","A","A","A","A","A","A"
];
List<String> pilihanInput = ['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil'];

class TentukanKarir extends StatefulWidget {
  // const TentukakKarir({Key? key}) : super(key: key);

  @override
  _TentukanKarirState createState() => _TentukanKarirState();
}

class _TentukanKarirState extends State<TentukanKarir> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF0099FF),
        appBar: AppBar(
          // centerTitle: true,
          backgroundColor: Color(0xFF8EC0E7),
          title: Row(
            children: [
              IconButton(onPressed: (){
                dataInput = ["A","A","A","A","A","A","A","A","A","A"];
                Navigator.of(context).pop();
              }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
              Text("Tentukan Karir",style: TextStyle(color: Colors.black),),
            ],
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 20),
                child: Text(
                  "Masukkan nilai-nilai dari mata kuliah anda di bawah ini",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 3),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Mata Kuliah",style: TextStyle(fontSize: 20, color: Colors.white,),),
                      Text("Nilai",style: TextStyle(fontSize: 20, color: Colors.white,),),
                    ],
                  )
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 3),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                          child: Container(child: Text("Perancangan Website",style: TextStyle(fontSize: 20, color: Colors.white,),))),
                      PerancanganWebsite()
                    ],
                  )
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 3),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          child: Text("Pemrograman Berbasis Website",style: TextStyle(fontSize: 20, color: Colors.white,),)),
                      ),
                      Pbweb()
                    ],
                  )
              ),

              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 3),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(child: Text("Interaksi Manusia dan Komputer",style: TextStyle(fontSize: 20, color: Colors.white,),))),
                      IMK()
                    ],
                  )
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 3),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            child: Text("Rekayasa Proses Bisnis",style: TextStyle(fontSize: 20, color: Colors.white,),))),
                      Rpb()
                    ],
                  )
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 3),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                              child: Text("Analisa dan Perancangan Sistem",style: TextStyle(fontSize: 20, color: Colors.white,),))),
                      Aps()
                    ],
                  )
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 3),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                              child: Text("Object Oriented Design",style: TextStyle(fontSize: 20, color: Colors.white,),))),
                      Ood()
                    ],
                  )
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 3),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                              child: Text("Sistem Enterpise",style: TextStyle(fontSize: 20, color: Colors.white,),))),
                      Se()
                    ],
                  )
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 3),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                              child: Text("Jaringan Komputer",style: TextStyle(fontSize: 20, color: Colors.white,),))),
                      Jarkom()
                    ],
                  )
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 3),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                              child: Text("Arsitektur Komputer",style: TextStyle(fontSize: 20, color: Colors.white,),))),
                      Arkom()
                    ],
                  )
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 3),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                              child: Text("Pengantar Ilmu Komputer",style: TextStyle(fontSize: 20, color: Colors.white,),))),
                      PIK()
                    ],
                  )
              ),

              Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF8EC0E7),
                  ),
                  onPressed: (){
                    // for(int i=0;i<dataInput.length;i++){
                    //   print("input ${i}"+dataInput[i].toString());
                    // }
                    var getInput = fuzzy(
                        dataInput[0],dataInput[1],dataInput[2],dataInput[3],dataInput[4],dataInput[5],dataInput[6],dataInput[7],dataInput[8],dataInput[9]
                    );
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Hasil Konversi"),
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 40,
                                  child: Row(
                                    children: [
                                      Flexible(
                                        fit:FlexFit.tight,
                                        child: Container(
                                          width: double.infinity,
                                          height: 40,

                                          decoration: BoxDecoration(
                                              color: getInput.WebContentSpealist() == "IYA" ? Colors.lightBlueAccent : Colors.transparent,
                                              border: Border.all(color: Colors.blueGrey,width: 2),
                                              borderRadius: BorderRadius.circular(10)

                                          ),
                                          child: Center(child: Text("Iya")),

                                        ),
                                      ),
                                      Flexible(
                                        fit:FlexFit.tight,
                                        child: Container(
                                          width: double.infinity,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: getInput.WebContentSpealist() == "MUNGKIN" ? Colors.lightBlueAccent : Colors.transparent,
                                              border: Border.all(color: Colors.blueGrey,width: 2),
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Center(child: Text("Mungkin")),

                                        ),
                                      ),
                                      Flexible(
                                        fit:FlexFit.tight,
                                        child: Container(
                                          width: double.infinity,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: getInput.WebContentSpealist() == "TIDAK" ? Colors.lightBlueAccent : Colors.transparent,
                                              border: Border.all(color: Colors.blueGrey,width: 2),
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Center(child: Text("Tidak")),

                                        ),
                                      ),
                                    ],

                                  ),

                                ),
                                Text(
                                  "Kemungkinan karirmu menjadi Web Content Specialist adalah " + getInput.WebContentSpealist().toString().toLowerCase(),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 20,),

                                Container(
                                  width: double.infinity,
                                  height: 40,
                                  child: Row(
                                    children: [
                                      Flexible(
                                        fit:FlexFit.tight,
                                        child: Container(
                                          width: double.infinity,
                                          height: 40,

                                          decoration: BoxDecoration(
                                              color: getInput.BusinessProcessAnalyst() == "IYA" ? Colors.lightBlueAccent : Colors.transparent,
                                              border: Border.all(color: Colors.blueGrey,width: 2),
                                              borderRadius: BorderRadius.circular(10)

                                          ),
                                          child: Center(child: Text("Iya")),

                                        ),
                                      ),
                                      Flexible(
                                        fit:FlexFit.tight,
                                        child: Container(
                                          width: double.infinity,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: getInput.BusinessProcessAnalyst() == "MUNGKIN" ? Colors.lightBlueAccent : Colors.transparent,
                                              border: Border.all(color: Colors.blueGrey,width: 2),
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Center(child: Text("Mungkin")),

                                        ),
                                      ),
                                      Flexible(
                                        fit:FlexFit.tight,
                                        child: Container(
                                          width: double.infinity,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: getInput.BusinessProcessAnalyst() == "TIDAK" ? Colors.lightBlueAccent : Colors.transparent,
                                              border: Border.all(color: Colors.blueGrey,width: 2),
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Center(child: Text("Tidak")),

                                        ),
                                      ),
                                    ],

                                  ),

                                ),
                                Text(
                                  "Kemungkinan karirmu menjadi Business Process Analyst adalah " + getInput.BusinessProcessAnalyst().toString().toLowerCase(),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 20,),

                                Container(
                                  width: double.infinity,
                                  height: 40,
                                  child: Row(
                                    children: [
                                      Flexible(
                                        fit:FlexFit.tight,
                                        child: Container(
                                          width: double.infinity,
                                          height: 40,

                                          decoration: BoxDecoration(
                                              color: getInput.NetworkingAdministrator() == "IYA" ? Colors.lightBlueAccent : Colors.transparent,
                                              border: Border.all(color: Colors.blueGrey,width: 2),
                                              borderRadius: BorderRadius.circular(10)

                                          ),
                                          child: Center(child: Text("Iya")),

                                        ),
                                      ),
                                      Flexible(
                                        fit:FlexFit.tight,
                                        child: Container(
                                          width: double.infinity,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: getInput.NetworkingAdministrator() == "MUNGKIN" ? Colors.lightBlueAccent : Colors.transparent,
                                              border: Border.all(color: Colors.blueGrey,width: 2),
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Center(child: Text("Mungkin")),

                                        ),
                                      ),
                                      Flexible(
                                        fit:FlexFit.tight,
                                        child: Container(
                                          width: double.infinity,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: getInput.NetworkingAdministrator() == "TIDAK" ? Colors.lightBlueAccent : Colors.transparent,
                                              border: Border.all(color: Colors.blueGrey,width: 2),
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Center(child: Text("Tidak")),

                                        ),
                                      ),
                                    ],

                                  ),

                                ),
                                Text(
                                  "Kemungkinan karirmu menjadi Networking Administrator adalah " + getInput.NetworkingAdministrator().toString().toLowerCase(),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                            actions: [
                              FlatButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.of(context).pop(true);
                                  });
                                },
                                child: Text("Tutup", style: TextStyle(color: Colors.blue)),
                              )
                            ],
                          );
                        }).then((value) => null);

                  },
                  child: Container(
                    height: 50,
                    child: Center(child: Text("Tentukan Karir",style: TextStyle(fontSize: 20, color: Colors.black)))
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}


class PerancanganWebsite extends StatefulWidget {
  @override
  State<PerancanganWebsite> createState() => PerancanganWebsiteState();
}
class PerancanganWebsiteState extends State<PerancanganWebsite> {
  String dropdownValue = 'A';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      iconSize: 15,
      elevation: 2,
      iconEnabledColor: Colors.white,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? newValue) {
        setState(() {
          // print(newValue);
          dataInput[0] = newValue.toString();
          dropdownValue = newValue!;
        });
      },
      items: <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: TextStyle(fontSize: 18),),
        );
      }).toList(),
      selectedItemBuilder: (BuildContext ctxt) {
        return <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil'].map<Widget>((item) {
          return DropdownMenuItem(
              child: Text(item,
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              value: item);
        }).toList();
      },
    );
  }
}


class Pbweb extends StatefulWidget {
  @override
  State<Pbweb> createState() => PbwebState();
}
class PbwebState extends State<Pbweb> {
  String dropdownValue = 'A';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      iconSize: 15,
      elevation: 2,
      iconEnabledColor: Colors.white,
      style: const TextStyle(color: Colors.black,),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? newValue) {
        setState(() {
          // print(newValue);
          dataInput[1] = newValue.toString();
          dropdownValue = newValue!;
        });
      },
      items: <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: TextStyle(fontSize: 18, color: Colors.black,),),
        );
      }).toList(),
      selectedItemBuilder: (BuildContext ctxt) {
        return <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil'].map<Widget>((item) {
          return DropdownMenuItem(
              child: Text(item,
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              value: item);
        }).toList();
      },
    );
  }
}



class IMK extends StatefulWidget {
  @override
  State<IMK> createState() => IMKState();
}
class IMKState extends State<IMK> {
  String dropdownValue = 'A';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      iconSize: 15,
      elevation: 2,
      iconEnabledColor: Colors.white,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? newValue) {
        setState(() {
          // print(newValue);
          dataInput[2] = newValue.toString();
          dropdownValue = newValue!;
        });
      },
      items: <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: TextStyle(fontSize: 18),),
        );
      }).toList(),
      selectedItemBuilder: (BuildContext ctxt) {
        return <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil'].map<Widget>((item) {
          return DropdownMenuItem(
              child: Text(item,
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              value: item);
        }).toList();
      },
    );
  }
}


class Rpb extends StatefulWidget {
  @override
  State<Rpb> createState() => RpbState();
}
class RpbState extends State<Rpb> {
  String dropdownValue = 'A';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      iconSize: 15,
      elevation: 2,
      iconEnabledColor: Colors.white,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? newValue) {
        setState(() {
          // print(newValue);
          dataInput[3] = newValue.toString();
          dropdownValue = newValue!;
        });
      },
      items: <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: TextStyle(fontSize: 18),),
        );
      }).toList(),
      selectedItemBuilder: (BuildContext ctxt) {
        return <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil'].map<Widget>((item) {
          return DropdownMenuItem(
              child: Text(item,
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              value: item);
        }).toList();
      },
    );
  }
}




class Aps extends StatefulWidget {
  @override
  State<Aps> createState() => ApsState();
}
class ApsState extends State<Aps> {
  String dropdownValue = 'A';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      iconSize: 15,
      elevation: 2,
      iconEnabledColor: Colors.white,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? newValue) {
        setState(() {
          // print(newValue);
          dataInput[4] = newValue.toString();
          dropdownValue = newValue!;
        });
      },
      items: <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: TextStyle(fontSize: 18),),
        );
      }).toList(),
      selectedItemBuilder: (BuildContext ctxt) {
        return <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil'].map<Widget>((item) {
          return DropdownMenuItem(
              child: Text(item,
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              value: item);
        }).toList();
      },
    );
  }
}


class Ood extends StatefulWidget {
  @override
  State<Ood> createState() => OodState();
}
class OodState extends State<Ood> {
  String dropdownValue = 'A';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      iconSize: 15,
      elevation: 2,
      iconEnabledColor: Colors.white,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? newValue) {
        setState(() {
          // print(newValue);
          dataInput[5] = newValue.toString();
          dropdownValue = newValue!;
        });
      },
      items: <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: TextStyle(fontSize: 18),),
        );
      }).toList(),
      selectedItemBuilder: (BuildContext ctxt) {
        return <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil'].map<Widget>((item) {
          return DropdownMenuItem(
              child: Text(item,
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              value: item);
        }).toList();
      },
    );
  }
}



class Se extends StatefulWidget {
  @override
  State<Se> createState() => SeState();
}
class SeState extends State<Se> {
  String dropdownValue = 'A';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      iconSize: 15,
      elevation: 2,
      iconEnabledColor: Colors.white,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? newValue) {
        setState(() {
          // print(newValue);
          dataInput[6] = newValue.toString();
          dropdownValue = newValue!;
        });
      },
      items: <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: TextStyle(fontSize: 18),),
        );
      }).toList(),
      selectedItemBuilder: (BuildContext ctxt) {
        return <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil'].map<Widget>((item) {
          return DropdownMenuItem(
              child: Text(item,
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              value: item);
        }).toList();
      },
    );
  }
}


class Jarkom extends StatefulWidget {
  @override
  State<Jarkom> createState() => JarkomState();
}
class JarkomState extends State<Jarkom> {
  String dropdownValue = 'A';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      iconSize: 15,
      elevation: 2,
      iconEnabledColor: Colors.white,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? newValue) {
        setState(() {
          // print(newValue);
          dataInput[7] = newValue.toString();
          dropdownValue = newValue!;
        });
      },
      items: <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: TextStyle(fontSize: 18),),
        );
      }).toList(),
      selectedItemBuilder: (BuildContext ctxt) {
        return <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil'].map<Widget>((item) {
          return DropdownMenuItem(
              child: Text(item,
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              value: item);
        }).toList();
      },
    );
  }
}


class Arkom extends StatefulWidget {
  @override
  State<Arkom> createState() => ArkomState();
}
class ArkomState extends State<Arkom> {
  String dropdownValue = 'A';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      iconSize: 15,
      elevation: 2,
      iconEnabledColor: Colors.white,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? newValue) {
        setState(() {
          // print(newValue);
          dataInput[8] = newValue.toString();
          dropdownValue = newValue!;
        });
      },
      items: <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: TextStyle(fontSize: 18),),
        );
      }).toList(),
      selectedItemBuilder: (BuildContext ctxt) {
        return <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil'].map<Widget>((item) {
          return DropdownMenuItem(
              child: Text(item,
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              value: item);
        }).toList();
      },
    );
  }
}


class PIK extends StatefulWidget {
  @override
  State<PIK> createState() => PIKState();
}
class PIKState extends State<PIK> {
  String dropdownValue = 'A';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      iconSize: 15,
      elevation: 2,
      iconEnabledColor: Colors.white,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? newValue) {
        setState(() {
          // print(newValue);
          dataInput[9] = newValue.toString();
          dropdownValue = newValue!;
        });
      },
      items: <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: TextStyle(fontSize: 18),),
        );
      }).toList(),
      selectedItemBuilder: (BuildContext ctxt) {
        return <String>['A','AB','B','BC','C','CD','D','DE','E','tidak\nmengambil'].map<Widget>((item) {
          return DropdownMenuItem(
              child: Text(item,
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              value: item);
        }).toList();
      },
    );
  }
}

