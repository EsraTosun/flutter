import 'package:flutter/material.dart';
import 'package:iki_buton_turleri_text_elevated_outlined/temel_buton_turleri.dart';

void main()
{
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(style: OutlinedButton.styleFrom()),
        textButtonTheme: TextButtonThemeData(style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue)
        )),
        primarySwatch: Colors.purple,
        textTheme: TextTheme(
          headlineLarge:
            TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Buton Örnekleri'),
        ),
        body: TemelButonTurleri(),
      ),
    );
  }
}
