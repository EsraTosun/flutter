import 'package:flutter/material.dart';

class CardveListtileKullanimi extends StatelessWidget {
  const CardveListtileKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card ve List tile'),
      ),
      body: Center(
        child: ListView(
          reverse: true,  //Elemanları terstten yazdırmamızı sağlar
          children: [
            Column(
              children: [
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
              ],
            ),
            Text('Selam'),
            ElevatedButton(onPressed: (){}, child: Text('Buton'))
          ],
        ),
      ),
    );
  }

  SingleChildScrollView singleChildKullan() {
    return SingleChildScrollView(
        child: Column(
          children: [
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
          ],
        ),
      );
  }

  Column tekListeElemani() {
    return Column(
        children: [
          Card(
            color: Colors.blue.shade100,  //Carda renk verir
            shadowColor: Colors.red,  //Gölge rengi
            elevation: 12, // Gölgeyi belirginleştirir
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), //ovalleştirir
            ),
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.add),), //Cardın sol tarafı
              title: Text('Başlık kısmı'),
              subtitle: Text('Alt kısmı'),
              trailing: Icon(Icons.real_estate_agent),  //Cardın sağ kısmı
            ),
          ),
          Divider(  //iki eleman arasını bölen ince bir çizgi
            color: Colors.red,
            thickness: 1, //çizginin genişliği
            height: 10,  //yukarıdaki eleman ile arasındaki boşluk
            indent: 60,  //sol tarafında olan boşluk
            endIndent: 60,  //sağ taraftan olan boşluk
          ),
        ],
      );
  }
}


//SingleChildScrollView() => EKRANA TAŞMASI DURUMUNDA EKRANI KAYDIRMALI YAPAR

//ListView() => SingleChildScrollView yaptıkları iş aynı sadece farklı
// childler eklenebilir
