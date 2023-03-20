import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.teal, //üst kısmın renk değişimi
          secondary: Colors.purple,  //Ana kısımda bulunanların renk değişim
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Başlık',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700,  //yazıyı kalınlaştırır
            ),
          ),
        ),
        body: ContainerDersleri(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            debugPrint('Tıklandı');
          },
          child: Icon(
            Icons.ac_unit_outlined,
            color: Colors.cyanAccent,
          ),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }

  Widget ContainerDersleri() {
    return Container(
        color: Colors.red.shade300,
        height: 400,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,  //bu satırı yazmazsak max olarak algılar
              //ve her yere yayılır.
              children: [
                Text('E'),
                Text('S'),
                Text('R'),
                Text('A'),
              ],
            ),
            Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.green,
            ),
            Icon(
              Icons.add_circle,
              size: 64,
              color: Colors.red,
            ),
            Icon(
              Icons.add_circle,
              size: 64,
              color: Colors.blue,
            ),
            Icon(
              Icons.add_circle,
              size: 64,
              color: Colors.orange,
            ),
          ],
        ),
      );
  }
}

//Row() => yatayda(x ekseninde) hizalar
//children[] => içinde widgetlar tutan bir listedir
//mainAxisSize => eksenlerde, içerik kadar yer tutmamızı sağlar(yayılabildiğin kadar yayıl)
//mainAxisAlignment => Bütün elemanları parça halinde hizalamızı sağlar
//crossAxisAlignment => y ekseninde hizalamamızı(ortalamamızı) sağlar

//Column() => Dikeyde(y ekseninde) hizalar