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
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('Hello World',
              style: TextStyle(
                color: Colors.red,
                fontSize: 24,
                fontWeight: FontWeight.w700,  //yazıyı kalınlaştırır
              ),
          ),
        ),
        body: Center( //Center wigetı çocuğu yapar.(alt+enter ile) Center=> childin, ortalar
          child: Container(
            alignment: Alignment.center,  //Containerın içindeki widgetı konumlandırır
            width: 200,   //Widget genişliği
            height: 200,  //Widget uzunluğu
            color: Colors.purple,
            child: //Text('Esra '*10, textAlign: TextAlign.center,)
                   Container(
                     alignment: Alignment.center,
                     color: Colors.blue,
                     margin: EdgeInsets.all(20),
                     width: 50,
                     height: 50,
                     child: Text('Esra'),
                   ),
            margin: EdgeInsets.all(16), //Wiget etrafındakilerden uzaklaşmasını sağlarız
            padding: EdgeInsets.fromLTRB(50, 50, 30, 30), //text-container arasındaki mesafeyi ayarlar
            /* constraints: BoxConstraints(  //Containerın boyutuna sınır veririz
                minHeight: 100,
                minWidth: 100,
                maxHeight: 200,
                maxWidth: 200,
            ), */
          ),
        ),
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
  
}

//runApp => Herhangi bir değer döndürmez.Widget ekler

//StatelessWidget => bundan bir sınıf oluşturulursa buil override edilmek zorunda
//return ederek başka bir widgetı return etmiş oluruz.

//MaterialApp() => Ana yapıdır. Genellikşe uygulama bunla başlar
//MaterialApp() => içinde home paremetresi kullanmak zorundayız

//home: => paremetresinde Scaffold kullanıulır genellikle çünkü tüm widgetların yeri vardır
//Scaffold => İçinde tüm widgetların yeri bulunur.Ana yapı olarak 2 tane;
//appBar: Üst kısım ,içinde widget oluşturmak istediğimizde tittle: kullanılır
//body: Ana kısım ,içinde widget oluşturmak istediğimizde child:(tek eleman için) kullanılır

//Çok eleman için children[] kullanılır

//floatingActionButton() => buttondur
//ThemeData => Görsel Temanın yapılandırılması
//TextStyle() => yazının rengi,boyutunu vb. şeyleri ayarladığımız yer
//Container() => Boş widgettır. child(çocuğu) kadar yer kaplar.
//Aligment => İçindeki child(çocuğu) konumladırır.
//Container widgetını alt+enter ile başka widgetın çocuğu yaparız
//Center() => içindeki childi ortalar
//widthFactor: 2, => childinin genişliğinin 2 katı olur
//heightFactor: 2, => childinin uzunluğunun 2 katı olur

