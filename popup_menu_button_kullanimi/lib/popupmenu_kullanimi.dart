import 'package:flutter/material.dart';

class PopupmenuKullanimi extends StatefulWidget {
  const PopupmenuKullanimi({Key? key}) : super(key: key);

  @override
  _PopupmenuKullanimiState createState() => _PopupmenuKullanimiState();
}

class _PopupmenuKullanimiState extends State<PopupmenuKullanimi> {
  String _secilenSeir = 'Ankara';
  List<String> renkler = ['mavi', 'yeşil', 'kırmızı', 'sari', 'siyah'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          print('secilen sehir : $sehir');
          setState(() {
            _secilenSeir = sehir;
          });
        },
        //child: Text(_secilenSeir),
        itemBuilder: (BuildContext context) {
          /* return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text('Ankara'),
              value: 'Ankara',
            ),
            PopupMenuItem(
              child: Text('Bursa'),
              value: 'Bursa',
            ),
            PopupMenuItem(
              child: Text('Van'),
              value: 'Van',
            ),
          ]; */

          return renkler
              .map(
                (String renk) => PopupMenuItem(
              child: Text(renk),
              value: renk,
            ),
          )
              .toList();
        },
      ),
    );
  }
}
