import 'package:bir_custom_font_kullanimi/models/veri_model.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa(Key k) : super(key: k);  //Durumu tutmasını sağlayan anahtar

  @override
  AnaSayfaState createState() {
    return  AnaSayfaState();
  }
}

class AnaSayfaState extends State<AnaSayfa> {
  late List<Veri> tumVeriler;

  @override
  void initState() {
 
    super.initState();
    tumVeriler = [
      Veri('Biz Kimiz', 'Biz kimizin içeriği buraya gelecek', false),
      Veri('Biz Neredeyiz', 'Biz neredeyiz içeriği buraya gelecek', false),
      Veri('Misyonumuz', 'Biz kimizin içeriği buraya gelecek', false),
      Veri('Vizyonumuz', 'Biz kimizin içeriği buraya gelecek', false),
      Veri('İletişim', 'Biz kimizin içeriği buraya gelecek', false),
      Veri('İletişim', 'Biz kimizin içeriği buraya gelecek', false),
      Veri('İletişim', 'Biz kimizin içeriği buraya gelecek', false),
      Veri('İletişim', 'Biz kimizin içeriği buraya gelecek', false),
      Veri('İletişim', 'Biz kimizin içeriği buraya gelecek', false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ExpansionTile(   //Seçtiğimiz zaman o eleman için alan oluşmasını sağlar
          key: PageStorageKey('$index'),   //Durumu belirttiğimiz key
          title: Text(tumVeriler[index].baslik),
          initiallyExpanded: tumVeriler[index].expanded,
          children: <Widget>[
            Container(
              color:
                  index % 2 == 0 ? Colors.red.shade200 : Colors.yellow.shade300,
              height: 100,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(tumVeriler[index].icerik),
              ),
            )
          ],
        );
      },
      itemCount: tumVeriler.length,
    );
  }
}
