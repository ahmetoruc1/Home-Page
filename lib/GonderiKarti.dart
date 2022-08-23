import 'package:ceganasayfa/GonderiKarti.dart';
import 'package:flutter/material.dart';

class GonderiKarti extends StatelessWidget {
  final String profilresimLinki;
  final String isimsoyad;
  final String gecenSure;
  final String gonderiResimLinki;
  final String aciklama;

  const GonderiKarti(
      {Key? key,
      required this.profilresimLinki,
      required this.isimsoyad,
      required this.gecenSure,
      required this.gonderiResimLinki,
      required this.aciklama})
      : super(key: key);

  @override
  Widget build(BuildContext) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: EdgeInsets.all(15.0),
          width: double.infinity,
          height: 380.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.indigo,
                            image: DecorationImage(
                                image: NetworkImage(profilresimLinki),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(width: (12.0)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isimsoyad,
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            gecenSure,
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                aciklama,
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
              SizedBox(
                height: 20.0,
              ),
              Image.network(
                gonderiResimLinki,
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 4.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IkonluButon(
                    ikon: Icons.favorite,
                    yazi: "Beğen",
                    fonksiyon: () {
                      print("Beğenildi");
                    },
                  ),
                  IkonluButon(
                    ikon: Icons.comment,
                    yazi: "Yorum Yap",
                    fonksiyon: () {
                      print("Yorum Yapıldı");
                    },
                  ),
                  IkonluButon(
                    ikon: Icons.share,
                    yazi: "Paylaş",
                    fonksiyon: () {
                      print("Paylaşıldı");
                    },
                  ),
                  // ikonlu ve Texttli Buton olan FlatButton.icon ile de yapılabilirdi
                  //FlatButton.icon(onPressed: (){}, icon: Icon(Icons.share),color: Colors.grey, label: Text("Paylaş"),style: TextStyle(
                  //color: Colors.grey,fontWeight: FontWeight.bold),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IkonluButon extends StatelessWidget {
  final IconData ikon;
  final String yazi;
  final fonksiyon;

  IkonluButon({required this.ikon, required this.yazi, this.fonksiyon});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: fonksiyon,
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Icon(
                ikon,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                yazi,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
