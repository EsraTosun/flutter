import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.teal, //üst kısmın renk değişimi
          secondary: Colors.purple, //Ana kısımda bulunanların renk değişim
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Başlık',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700, //yazıyı kalınlaştırır
            ),
          ),
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: fleixbleContainer,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
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

  List<Widget> get sorunluContainer {
    return [
      Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
       Container(
          width: 75,
          height: 75,
          color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
    ];
  }

  List<Widget> get expandedContainer {
    return [
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.orange,
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
    ];
  }

  List<Widget> get fleixbleContainer {
    return [
      Flexible(
        flex: 1,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.yellow,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.red,
        ),
      ),
    ];
  }

}

//Expanded() => İçinde aldığı widgetı alana sığdırır.
//Genişlik ve yüksekliğin bir önemi yok sen uygun buldupun alana yerleştir demek
// flex: => flex sayesinde diğer widgetlardan daha fazla yer kaplamasını sağlarız
//flex değeri yazmadığımzda flex: 1 olarak kabul edilir ve eşit dağılır

//Flexible() => İçerik kadar yer tut. Lazımsa küçül.
//Genişlik istenen değeri asla geçmez
// flex: => flex sayesinde diğer widgetlardan daha fazla yer kaplamasını sağlarız
//flex değeri yazmadığımzda flex: 1 olarak kabul edilir ve eşit dağılır

// Expanded ile Fleible'nin farklı ;
// Expanded mümkün olan bütün alana yayılır
// Fleible en fazla verilen genişlik kadar büyür.Lazım olursa küçülür