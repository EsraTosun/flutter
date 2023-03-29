import 'package:flutter/material.dart';
import 'package:iki_listelerle_calisirken_layout_sorunlari/listview_layout_problemleri.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ListviewLayoutProblemleri(),
    );
  }
}
