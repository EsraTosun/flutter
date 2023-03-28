import 'package:flutter/material.dart';
import 'package:listeler_icin_card_listtile_divider_ogrenelim/card_listtile.dart';
import 'package:listeler_icin_card_listtile_divider_ogrenelim/listview_kullanimi.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ListViewKullanimi(),
    );
  }
}
