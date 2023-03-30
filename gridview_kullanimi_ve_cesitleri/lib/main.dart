import 'package:flutter/material.dart';
import 'package:uc_gridview_kullanimi_ve_cesitleri/grid_view_kullanimi.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid View'),
        ),
        body: GridViewOrnek(),
      ),
    );
  }
}
