import 'dart:math';

class fuzzy {
  String PerancanganWebsite;
  String PemrogramanBerbasisWeb;
  String InteraksiManusiaDanKomputer;
  String RekayasaProsesBisnis;
  String AnalisaDanPerancanganSistem;
  String ObjectOrientedDesign;
  String SistemEnterprise;
  String JaringanKomputer;
  String ArsitekturKomputer;
  String PengantarIlmuKomputer;

  fuzzy(
    this.PerancanganWebsite,
    this.PemrogramanBerbasisWeb,
    this.InteraksiManusiaDanKomputer,
    this.RekayasaProsesBisnis,
    this.AnalisaDanPerancanganSistem,
    this.ObjectOrientedDesign,
    this.SistemEnterprise,
    this.JaringanKomputer,
    this.ArsitekturKomputer,
    this.PengantarIlmuKomputer
  );

  double lemah(nilai) {
    if (nilai <= 2) {
      return 0;
    } else if (nilai >= 5) {
      return 1;
    } else {
      return (nilai - 2) / (5 - 2);
    }
  } 

  double pandai(nilai) {
    if (nilai <= 2) {
      return 1;
    } else if (nilai >= 5) {
      return 0;
    } else {
      return (5 - nilai) / (5 - 2);
    }
  }

  double outputIya( double nilai) {
    if (nilai == 1) {
      return 2;
    } else if (nilai == 0) {
      return 5;
    } else {
      return nilai * (5-2) + 2;
    }
  }

  double outputTidak(double nilai) {
    if (nilai == 1) {
      return 8;
    } else if (nilai == 0) {
      return 5;
    } else {
      return 5 - nilai * (8-5);
    }
  }

  double outputMungkin(double nilai) {
    if (nilai == 1) {
      return 5;
    } else if (nilai == 0) {
      return 2;
    } else {
      return nilai * (5-2) + 2;
    }
  }

  konversiSkor(skor) {
    switch(skor) {
      case "A" : {return 0;}
      break;
      
      case "AB" : {return 1;}
      break;
      
      case "B" : {return 2;}
      break;
      
      case "BC" : {return 3;}
      break;
      
      case "C" : {return 4;}
      break;
      
      case "CD" : {return 5;}
      break;
      
      case "D" : {return 6;}
      break;
      
      case "DE" : {return 7;}
      break;
      
      default : {return 8;}
      break;
    }
  }

  indexSama(listIndex) {
    for (var i=0; i<listIndex.length-1; i++ ) {
      if (listIndex[i] != listIndex[i+1]) {
        return false;
      }
    }
    return listIndex[0];
  }

  defuzzy(List<double> alpha, List<double> z) {
    double a = 0;
    double b = 0;

    for (var index=0; index<=alpha.length-1; index++) {
      a += alpha[index] * z[index];
      b += alpha[index];
    }


    if (a/b <= 2) {
      return "IYA";
    } else if (a/b >= 8) {
      return "TIDAK";
    } else {
      return "MUNGKIN";
    }
  }

  WebContentSpealist() {
    int PerancanganWebsite = konversiSkor(this.PerancanganWebsite);
    int PemrogramanBerbasisWeb = konversiSkor(this.PemrogramanBerbasisWeb);
    int InteraksiManusiaDanKomputer = konversiSkor(this.InteraksiManusiaDanKomputer);

    List<double> listPerancanganWebsite = [pandai(PerancanganWebsite), lemah(PerancanganWebsite)];
    List<double> listPemrogramanBerbasisWeb = [pandai(PemrogramanBerbasisWeb), lemah(PemrogramanBerbasisWeb)];
    List<double> listInteraksiManusiaDanKomputer = [pandai(InteraksiManusiaDanKomputer), lemah(InteraksiManusiaDanKomputer)];

    List<double> ListAlpha = [];
    List<double> z = [];

    for (var pw=0; pw<=1; pw++) {
      for (var pbw=0; pbw<=1; pbw++) {
        for (var imk=0; imk<=1; imk++) {
          List<int> index = [pw, pbw, imk];
          double alpha = [listPerancanganWebsite[pw], listPemrogramanBerbasisWeb[pbw], listInteraksiManusiaDanKomputer[imk]].reduce(min);
          ListAlpha.add(alpha);

          if (indexSama(index) == 0) {
            z.add(
              outputIya(
                alpha
              )
            );
          } else if (indexSama(index) == 1) {
            z.add(
              outputTidak(
                alpha
              )
            );
          } else {
            z.add(
              outputMungkin(
                alpha
              )
            );
          }
        }
      }
    }

    return defuzzy(ListAlpha, z);
  }

  BusinessProcessAnalyst() {
    int RekayasaProsesBisnis = konversiSkor(this.RekayasaProsesBisnis);
    int AnalisaDanPerancanganSistem = konversiSkor(this.AnalisaDanPerancanganSistem);
    int ObjectOrientedDesign = konversiSkor(this.ObjectOrientedDesign);
    int SistemEnterprise = konversiSkor(this.SistemEnterprise);

    List<double> listRekayasaProsesBisnis = [pandai(RekayasaProsesBisnis), lemah(RekayasaProsesBisnis)];
    List<double> listAnalisaDanPerancanganSistem = [pandai(AnalisaDanPerancanganSistem), lemah(AnalisaDanPerancanganSistem)];
    List<double> listObjectOrientedDesign = [pandai(ObjectOrientedDesign), lemah(ObjectOrientedDesign)];
    List<double> listSistemEnterprise = [pandai(SistemEnterprise), lemah(SistemEnterprise)];

    List<double> ListAlpha = [];
    List<double> z = [];

    for (var rpb=0; rpb<=1; rpb++) {
      for (var aps=0; aps<=1; aps++) {
        for (var ood=0; ood<=1; ood++) {
          for (var se=0; se<=1; se++) {
            List<int> index = [rpb, aps, ood, se];
            double alpha = [listRekayasaProsesBisnis[rpb], listAnalisaDanPerancanganSistem[aps], listObjectOrientedDesign[ood], listSistemEnterprise[se]].reduce(min);
            ListAlpha.add(alpha);

            if (indexSama(index) == 0) {
              z.add(
                outputIya(
                  alpha
                )
              );
            } else if (indexSama(index) == 1) {
              z.add(
                outputTidak(
                  alpha
                )
              );
            } else {
              z.add(
                outputMungkin(
                  alpha
                )
              );
            }
          }
        }
      }
    }

    return defuzzy(ListAlpha, z);
  }

  NetworkingAdministrator() {
    int JaringanKomputer = konversiSkor(this.JaringanKomputer);
    int InteraksiManusiaDanKomputer = konversiSkor(this.InteraksiManusiaDanKomputer);
    int ArsitekturKomputer = konversiSkor(this.ArsitekturKomputer);
    int PengantarIlmuKomputer = konversiSkor(this.PengantarIlmuKomputer);

    List<double> listJaringanKomputer = [pandai(JaringanKomputer), lemah(JaringanKomputer)];
    List<double> listInteraksiManusiaDanKomputer = [pandai(InteraksiManusiaDanKomputer), lemah(InteraksiManusiaDanKomputer)];
    List<double> listArsitekturKomputer = [pandai(ArsitekturKomputer), lemah(ArsitekturKomputer)];
    List<double> listPengantarIlmuKomputer = [pandai(PengantarIlmuKomputer), lemah(PengantarIlmuKomputer)];

    List<double> ListAlpha = [];
    List<double> z = [];

    for (var jarkom=0; jarkom<=1; jarkom++) {
      for (var imk=0; imk<=1; imk++) {
        for (var arkom=0; arkom<=1; arkom++) {
          for (var pik=0; pik<=1; pik++) {
            List<int> index = [jarkom, imk, arkom, pik];
            double alpha = [listJaringanKomputer[jarkom], listInteraksiManusiaDanKomputer[imk], listArsitekturKomputer[arkom], listPengantarIlmuKomputer[pik]].reduce(min);
            ListAlpha.add(alpha);

            if (indexSama(index) == 0) {
              z.add(
                outputIya(
                  alpha
                )
              );
            } else if (indexSama(index) == 1) {
              z.add(
                outputTidak(
                  alpha
                )
              );
            } else {
              z.add(
                outputMungkin(
                  alpha
                )
              );
            }
          }
        }
      }
    }
    
    return defuzzy(ListAlpha, z);
  }
}

void main() {
  var coba = fuzzy("A", "E", "A", "A", "A", "A", "A", "A", "A", "A");
  print(coba.WebContentSpealist());
  print(coba.BusinessProcessAnalyst());
  print(coba.NetworkingAdministrator());
}