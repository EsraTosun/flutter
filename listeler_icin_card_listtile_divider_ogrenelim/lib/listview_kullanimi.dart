import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewKullanimi extends StatelessWidget {
   ListViewKullanimi({Key? key}) : super(key: key);

  List<Ogrenci> tumOgrenciler = List.generate(500,
        (index) => Ogrenci(index+1, 'Ogrenci adı ${index+1}', 'Ogrenci Soyadi ${index+1}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Öğrenci Listesi'),
      ),
      body: ListViewSeparated(),
    );
  }

  ListView ListViewSeparated() {
    return ListView.separated(itemBuilder: (BuildContext context, int index){
      var oankiOgrenci = tumOgrenciler[index];
      return Card(
        color: index % 2 ==0 ? Colors.orange.shade100 : Colors.purple.shade100,
        child: ListTile(
          onTap: (){
            print("Eleman Tıklandı : ${index}");
          },
          onLongPress: (){
            _alertDialogIslemleri(context,oankiOgrenci);
          },
          title: Text(oankiOgrenci.isim),
          subtitle: Text(oankiOgrenci.soyisim),
          leading: CircleAvatar(child: Text(oankiOgrenci.id.toString()),),
        ),
      );
    },
      itemCount: tumOgrenciler.length,
      separatorBuilder: (context,index){
          var yeniIndex = index+1;
          if(yeniIndex % 4 == 0 )
            {
              return Divider(
                thickness: 2,
                color: Colors.teal,
              );
            }
            return SizedBox();
      },

    );
  }

  ListView ListViewBuilder() {
    return ListView.builder(itemBuilder: (BuildContext context, int index){
      var oankiOgrenci = tumOgrenciler[index];
      return Card(
        color: index % 2 ==0 ? Colors.orange.shade100 : Colors.purple.shade100,
        child: ListTile(
          onTap: (){
            print("Eleman Tıklandı : ${index}");
          },
          title: Text(oankiOgrenci.isim),
          subtitle: Text(oankiOgrenci.soyisim),
          leading: CircleAvatar(child: Text(oankiOgrenci.id.toString()),),
        ),
      );
    },itemCount: tumOgrenciler.length,
    );
  }

  ListView klasikListView() {
    return ListView(
      children: tumOgrenciler.map((Ogrenci ogr) => ListTile(
        title: Text(ogr.isim),
        subtitle: Text(ogr.soyisim),
        leading: CircleAvatar(child: Text(ogr.id.toString()),),
      )
      ).toList(),  //Listeyi widgeta dönüştürürüz
    );
  }

  void _alertDialogIslemleri(BuildContext myContext,Ogrenci secilen) {
    //showCupertinoDialog(context: context, builder: builder) //İOS uygulamaları için
    showDialog(
      barrierDismissible: false, //Ekran tışına basıldığında çıkmayı kapatmış oluruz
      context: myContext,
      builder: (context){
      return AlertDialog(
        title: Text(secilen.toString()),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text('Esra'*100),
              Text('Esra1'*100),
              Text('Esra2'*100),
            ],
          ),
        ),
        actions: [
          ButtonBar(
              children: [
                TextButton(
                  onPressed: (){
                    Navigator.pop(context);  //O an açık olan ekrandan bir geriye gidilmesini sağlar
                  },
                  child: Text('Kapat')
              ),
                TextButton(
                  onPressed: (){},
                  child: Text('Tamam')
            ),

         ],
        ),
      ],
      );
    });
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);

  @override
  String toString() {  //Clası Strinde çevirdiğimizde ekrana nasıl yazılacağını bildiriyoruz

    return 'Isım: $isim Soyisim: $soyisim Id: $id';
  }
}


// ListView.builder => LİSTE KONUSUNDA KASILMA YAPMAYACAK BİR YAPI
// ListView.separated => YUKARIDAKİ İLE AYNI TEK FARKI X. ELEMANDAN SONDA
// ŞU WİDGETİ GÖSTER DİYEBİLİRİZ (ARALARA REKLAM KONULABİLİR )


//showDialog => sayesinde basılı tuttuğumzda ne çıkacağına karar veririz
//SingleChildScrollView => boyut fazla ise yukarı aşağıya kayabilmemizi sağlar