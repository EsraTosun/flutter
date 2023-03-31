import 'package:dort_boxdecoration_ve_decorationimage_kullanimi/grid_view_kullanimi.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: GridViewOrnek(),
      ),
    );
  }
}
