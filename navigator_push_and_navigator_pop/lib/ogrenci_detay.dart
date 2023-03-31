import 'package:bir_navigator_push_and_navigator_pop/ogrenci_listesi.dart';
import 'package:flutter/material.dart';

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenOgrenci;
  const OgrenciDetay({required this.secilenOgrenci,Key? key}) : super(key: key);
   //KURUCU İLE VERİ ALMA
  @override
  Widget build(BuildContext context) {

    var secilen =ModalRoute.of(context)!.settings.arguments as Ogrenci;
    print('Secilen Ogrenci ::: ${secilen.isim}  ');
    //NORMAL BİR ŞEKİLDE VERİ ALMA

    return Scaffold(
      appBar: AppBar(
        title: Text('Öğrenci Detay'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(secilenOgrenci.id.toString()),
            Text(secilenOgrenci.isim),
            Text(secilenOgrenci.soyisim),
          ],
        ),
      ),
    );
  }
}


//KURUCULAR İLE YENİ SAYFAYA VERİ GÖNDERMEK