import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{

  String _img1=
      'https://upload.wikimedia.org/wikipedia/commons/thumb/'
      'e/e1/FullMoon2010.jpg/225px-FullMoon2010.jpg';

  String _img2= 'https://emrealtunbilek.com/'
      'wp-content/uploads/2016/10/apple-icon-72x72.png';

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
    return Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Text( 'Esra',
            style: TextStyle(fontSize: 128),
          ),
          decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            border: Border.all(width: 4, color: Colors.purple), //çerçeve ekler
            //borderRadius: BorderRadius.circular(10),  //köşelere ovallık verir
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            image: DecorationImage(
                image: NetworkImage(_img2),
                fit: BoxFit.scaleDown,  //Bütün içeriğe resmi yerleştirir
                repeat: ImageRepeat.repeat, //Resmi çoğaltır
            ),
            boxShadow: [  //Gölgelendirme yapmamızı sağlar
              BoxShadow(
                  color: Colors.green,
                  offset: Offset(10,20),
                  blurRadius: 10,
              ),
              BoxShadow(
                  color: Colors.red,
                  offset: Offset(0,-90),
                  blurRadius: 20,
              ),
            ]
          ),
        ),
      );
  }

}

//boxShadow: [   => Gölgelendirme yapmamızı sağlar
//   offset(x,y) => s,y düzleminde gölgenin boyutlandırmasını yapar
//   blurRadius: 10  => Gölgeyi yumuşatır
// ]

//Tek bir tane bile boxShadow tanımlayacak olsak da liste('[]') şeklinde
//tanımlamak zorundayız