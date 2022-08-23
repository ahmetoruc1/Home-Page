import 'package:ceganasayfa/GonderiKarti.dart';
import 'package:ceganasayfa/ProfilKarti.dart';
import 'package:ceganasayfa/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ÇEG',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: Anasayfa());
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              size: 32.0,
              color: Colors.grey,
            ),
            onPressed: () {}),
        title: Text(
          "ÇEG",
          style: TextStyle(fontSize: 25.0, color: Colors.grey),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                size: 32.0,
                color: Colors.purple,
              ),
              onPressed: () {
                showModalBottomSheet(context: context, builder: (BuildContext context){
                  return Column(
                    children:<Widget> [
                      duyuru("Ahmet Cevahir Çınar Seni Takip Etti","2 Hafta önce"),
                      duyuru("Karim Benzema gönderi yayınladı","3 Hafta önce"),
                      duyuru("Elon Musk sana mesaj attı","2 Hafta önce"),



                    ],

                  );
                });

              }),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 100.0,
            decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 3.0),
                blurRadius: 5.0,
              )
            ]),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                StoryKarti(
                    "A.C.Ç",
                    "https://avatars.githubusercontent.com/u/30929170?v=4",
                    "Ahmet Cevahir Çınar",
                    "https://cdn.armut.com/UserPics/tr:w-325,h-325/8fd298cc-6c47-43ed-903c-9bf238b21c92.jpeg"),
                StoryKarti(
                    "Elon",
                    "https://icdn.tgrthaber.com.tr/crop/850x500/static/haberler/22-05/27/elon-musk-twitter-tgrt.jpg",
                    "Elon Musk",
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/330px-Elon_Musk_Royal_Society_%28crop2%29.jpg"),
                StoryKarti(
                    "Virtüöz",
                    "https://ajssarimg2.mediatriple.net/1603622.jpg.webp?w=1200&h=675",
                    "Karim Benzema",
                    "https://pbs.twimg.com/media/Ece3eQ3XgAESVMu.jpg"),
                StoryKarti(
                    "İmparator",
                    "http://www.gercekhayat.com.tr/wp-content/uploads/2017/07/terim-04-800x450.jpg",
                    "Fatih Terim",
                    "https://iasbh.tmgrup.com.tr/98f41a/0/0/0/0/0/0?u=https://isbh.tmgrup.com.tr/sb/album/2022/04/22/son-dakika-fatih-terimin-yeni-adresi-belli-oldu-galatasaray-sonrasi-buyuk-surpriz-1650628058736.jpg&mw=752&mh=700"),
                StoryKarti(
                    "Nazlı",
                    "https://img-s1.onedio.com/id-6284c000d89a244d19f1090d/rev-0/w-600/h-554/f-jpg/s-cd57485806ec6461d133afa8785b8894e622c5bc.jpg",
                    "Erşan Kuneri Nazlı",
                    "https://img-s1.onedio.com/id-6284c30264f4faf31a8d5c8b/rev-0/w-635/f-jpg/s-d59fedb34645c27e5b2595db48b64c8e9fce8a04.jpg"),
                StoryKarti(
                    "Ölümsüz",
                    "http://c12.incisozluk.com.tr/res/incisozluk//11507/3/3440853_o28c9.jpg",
                    "Polat Alemdar",
                    "https://i3.posta.com.tr/i/posta/75//750x0/6196427f45d2a07ffcb08502"),
              ],
            ),
          ),
          SizedBox(
            height: 10.00,
          ),
          GonderiKarti(
              profilresimLinki:
                  "https://avatars.githubusercontent.com/u/30929170?v=4",
              isimsoyad: "Ahmet Cevahir Çınar",
              gecenSure: "3 Hafta önce",
              aciklama: "#BİLMÖK 2022",
              gonderiResimLinki:
                  "https://www.ahmetcevahircinar.com.tr/wp-content/uploads/2022/05/guray-yildirim-ahmet-cevahir-cinar.jpeg"),
          GonderiKarti(
              profilresimLinki:
                  "https://icdn.tgrthaber.com.tr/crop/850x500/static/haberler/22-05/27/elon-musk-twitter-tgrt.jpg",
              isimsoyad: "Elon Musk",
              gecenSure: "1 Ay önce",
              aciklama: "#Yasama ,Yürütme,Elon Bundan sonra:d",
              gonderiResimLinki:
                  "https://img-s3.onedio.com/id-626703381bb869432b15d4a8/rev-0/w-635/f-jpg/s-d332cf8dad852659fcd3a4acf39403bd0c4f2d09.jpg"),
          GonderiKarti(
              profilresimLinki:
                  "https://ajssarimg2.mediatriple.net/1603622.jpg.webp?w=1200&h=675",
              isimsoyad: "Karim Benzema",
              gecenSure: "3 Hafta önce",
              aciklama: "Kupa hanemize hayırlı olsun",
              gonderiResimLinki:
                  "https://pbs.twimg.com/media/Ece3eQ3XgAESVMu.jpg")
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: null,
      backgroundColor: Colors.purple.shade300,
      child: Icon(Icons.add_a_photo,color: Colors.white,)),
    );
  }

  Padding duyuru(String mesaj, String sure) {
    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(mesaj,
                          style: TextStyle(
                            fontSize: 15.0
                          ),),
                          Text(sure,style: TextStyle(
                              fontSize: 15.0),),
                        ],
                      ),
                    );
  }

//Profil kartı kodlarını tekrar yazmak yerine fonksiyonda tanımladık
  Widget StoryKarti(String kullanciadi, String resimlinki, String adsoyad,
      String kapakresimLinki) {
    return Material(
      child: InkWell(
        onTap: () async {
          bool donenveri = await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ProfilKarti(
                        profilresmiLinki: resimlinki,
                        kullaniciadi: kullanciadi,
                        adsoyad: adsoyad,
                        kapakresimLinki: kapakresimLinki,
                      )));
          if(donenveri) {
            print("Kullanıcı Anasayfaya döndü.");
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Hero(
                    tag: kullanciadi,
                    // tag'e kullanıcı adı vermemizin sebebi aynı tagle birden fazla hero çalışmadaığından dolayıdır
                    //aynı şekilde eğer birden fazla aynı kullanıcı adı olurursa program hata verir
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(35.0),
                          image: DecorationImage(
                            image: NetworkImage(resimlinki),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  )
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                kullanciadi,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
