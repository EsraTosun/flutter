import 'package:bir_navigator_push_and_navigator_pop/green_page.dart';
import 'package:bir_navigator_push_and_navigator_pop/orange_page.dart';
import 'package:bir_navigator_push_and_navigator_pop/red_page.dart';
import 'package:bir_navigator_push_and_navigator_pop/route_generator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: AnaSayfa(),  AŞAĞIDA ANASAYFA TANIMLANDIĞI İÇİN BUDA YAZILIRSA HATA VERİR
     /* routes: {   //ROTAYI TANIMLARIZ
        '/redPage' : (context) => RedPage(),
        '/' : (context) => AnaSayfa(),
        '/orangePage' : (context) => OrangePage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(   //Olmayan bir sayfaya gidilmeye
          builder: (context) => Scaffold(                //çalışıldığında hata vermek yerine
          appBar: AppBar(                                //Bu sayfayı çalıştır demek
              title: Text('Error'),
            ),
            body: Center(
              child: Text('404'),
            ),
          )),  */
      onGenerateRoute: RouteGenerator.routeGenerator,   // TAVSİYE EDİLEN KULLANMA ŞEKLİ
      //direk çalışmasını istemediğimiz için bu şekilde yazdık
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mavigator İşlemleri'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              ElevatedButton(  //IOS şeklinde açılır
                onPressed: (){
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (redContext) => RedPage(),),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade300,
                ),
                child: Text('Kırmızı Sayfaya Gir IOS',),
              ),
              ElevatedButton(  //Android şeklinde açılır
                onPressed: (){
                  //Navigator.push(context, route);
                  Navigator.of(context).push(  //İstenilen sayfaya gitmemizi sağlar
                      MaterialPageRoute(builder: (redcontext) =>RedPage())
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600,
                ),
                child: Text('Kırmızı Sayfaya Gir Android',),
              ),
              ElevatedButton(  //Gönderilen Değeri Alma
                onPressed: () async{
                  int? _gelenSayi = await Navigator.of(context).push(
                      MaterialPageRoute(builder: (redcontext) =>RedPage()));
                  print('Gelen sayi: $_gelenSayi');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600,
                ),
                child: Text('Red Sayfasından Değer Alma',),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).maybePop(); //Öncesinde sayfa varsa o sayfaya gitsin
                  //Ama yoksa çıkartmasın anlamına gelir.Pop yukarıdakisiyah sayfaya gidip hata vericek
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600,
                ),
                child: Text('Maybe Pop Kullanımı',),
              ),
              ElevatedButton(
                onPressed: (){  //Geri gelinebilirlik durumunu bize bildirir
                  if(Navigator.canPop(context)) {
                      print("evet pop olabilir");
                    }else {
                      print("hayır olamaz");
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600,
                ),
                child: Text('Can Pop Kullanımı',),
              ),
              ElevatedButton(   //Gidilen sayfayı Ana Sayfa yapar
                onPressed: (){   //Geri Dönüşü olmaz
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => GreenPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600,
                ),
                child: Text('Push Replacament Kullanımı',),
              ),
              ElevatedButton(
                onPressed: (){
                  //Navigator.of(context).pushNamed(routeName);
                  Navigator.pushNamed(context, '/redPage');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade600,
                ),
                child: Text('PushNamed  Kullanımı',),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/yellowPage');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow.shade600,
                ),
                child: Text('PushNamed  Kullanımı Yellow',),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(
                      '/ogrenciListesi',
                      arguments: 60,  //Sayfaya gönderilecek değer
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange.shade600,
                ),
                child: Text('Liste Oluştur',),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed('/purplePage');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple.shade600
                ),
                child: Text(
                  'Mor Sayfaya Git',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

