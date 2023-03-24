import 'package:bir_kendi_widgetlarimizi_olusturalim/image_widgets.dart';
import 'package:bir_kendi_widgetlarimizi_olusturalim/my_counter_page.dart';
import 'package:flutter/material.dart';

void main() {
  debugPrint('main metodu çalıştı');
  runApp(MyApp());  //Flutter projemizi ayağa kaldıran yapı
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('MyApp build çalıştı');
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
          backgroundColor: Colors.white,
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
        ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Örnekleri'),
        ),
        body: ImageOrnekleri(),
      ),
    );
  }
}




//StatelessWidget => İçinde mutlaka build yazılmak zorunda
// Ekranan konulan bir şey değişmeyecek ise StatelessWidget yaparız
//StatelessWidget const olduğu için değişmez yapılar demek


//setState(() {  => Sayesinde ilgili widget tekrar tetikleniyor ve
//                    widget baştan çalışıyor
//     });


//Theme.of(context).textTheme.headlineLarge => context sayesinde
// üst yapılardaki verileri okumamızı sağlar
