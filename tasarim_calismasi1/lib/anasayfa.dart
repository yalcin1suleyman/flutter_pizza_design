//2. st widget ile bu sayfayı olusturabiliriz.
import 'package:flutter/material.dart';
import 'package:tasarim_calismasi1/l10n/app_localizations.dart';
import 'package:tasarim_calismasi1/renkler.dart';//StatefulWidget i yeniden yazar gibi yaparak ekleyebiliriz


class Anasayfa extends StatefulWidget {//3. boşluğa Anasayfa yazdık
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {//görüntü işlemleri burada yapılır
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.height;
    print("Ekran Genişliği : $ekranGenisligi");
    print("Ekran Yüksekliği : $ekranYuksekligi");

    var d = AppLocalizations.of(context);//(7)
    return Scaffold(//5. içeriğine appBar ekledik

      appBar: AppBar(
        title: Text("Pizza",style: TextStyle(color: yaziRenk1,fontFamily: "Pacifico",fontSize: 22),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),

      body: Column(//body de bulunan diger widgetler alt alta yer aldığı için column yapısını en dışta kullandık
        children: [
        Padding(
          padding: EdgeInsets.only(top: ekranYuksekligi/500),
          child: Text(d!.pizzaBaslik, style: TextStyle(color: anaRenk,fontSize: ekranGenisligi/19, fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Image.asset("resimler/pizza_resim.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Chip(icerik: d.peynirYazi,),
              Chip(icerik: d.sucukYazi,),
              Chip(icerik: d.zeytinYazi,),
              Chip(icerik: d.biberYazi,),
              /*TextButton(onPressed: (){},
                style: TextButton.styleFrom(backgroundColor: anaRenk),
                child: Text("Cheese",style: TextStyle(color: yaziRenk1),),
              ),
              TextButton(onPressed: (){},
                style: TextButton.styleFrom(backgroundColor: anaRenk),
                child: Text("Sausage",style: TextStyle(color: yaziRenk1),),
              ),
              TextButton(onPressed: (){},
                style: TextButton.styleFrom(backgroundColor: anaRenk),
                child: Text("Olive",style: TextStyle(color: yaziRenk1),),
              ),
              TextButton(onPressed: (){},
                style: TextButton.styleFrom(backgroundColor: anaRenk),
                child: Text("Peper",style: TextStyle(color: yaziRenk1),),
              ),*/
            ],
          ),
        ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(d.teslimatSure, style: TextStyle(color: yaziRenk2,fontSize: 22, fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(d.teslimatBaslik, style: TextStyle(color: anaRenk,fontSize: 22, fontWeight: FontWeight.bold),),
                ),
                Text(d.pizzaAciklama,
                  style: TextStyle(color: yaziRenk2,fontSize: 22),textAlign: TextAlign.center,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row( //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(d.fiyat, style: TextStyle(color: anaRenk,fontSize: 44, fontWeight: FontWeight.bold),),
                const Spacer(),
                SizedBox(width: ekranGenisligi/4,height: 50,
                  child: TextButton(onPressed: (){},
                    style: TextButton.styleFrom(
                        backgroundColor: anaRenk,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
                    ),
                    child: Text(d.butonYazi,style: TextStyle(color: yaziRenk1,fontSize: 18),),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    ); //4.Scaffold bize sayfa altyapısını sabitlemeyi sağlar
  }
}
class Chip extends StatelessWidget {
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
    style: TextButton.styleFrom(backgroundColor: anaRenk),
    child: Text(icerik,style: TextStyle(color: yaziRenk1),),
    );
  }
}
