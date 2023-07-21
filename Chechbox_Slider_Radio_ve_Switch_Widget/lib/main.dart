import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'diger_form_elemanlari.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DigerFormElemanlari(),
    );
  }
}
