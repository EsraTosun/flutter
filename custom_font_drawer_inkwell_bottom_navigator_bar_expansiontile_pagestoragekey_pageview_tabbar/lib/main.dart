import 'package:bir_custom_font_kullanimi/ui/ana_sayfa.dart';
import 'package:bir_custom_font_kullanimi/ui/arama.dart';
import 'package:bir_custom_font_kullanimi/ui/drawer_menu.dart';
import 'package:bir_custom_font_kullanimi/ui/page_view.dart';
import 'package:bir_custom_font_kullanimi/ui/tabs.dart';
import 'package:flutter/material.dart';

void main() => runApp(const FlutterDersleri());

class FlutterDersleri extends StatelessWidget {

  const FlutterDersleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      fontFamily: 'Genel',
      primarySwatch: Colors.teal,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dersleri',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(secondary: Colors.orangeAccent),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() {
    return  MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int secilenMenuItem = 0;
  late List<Widget> tumSayfalar;
  late AnaSayfa sayfaAna;
  late AramaSayfasi sayfaArama;
  late PageViewOrnek pageViewOrnek;

  var keyAnaSayfa = const PageStorageKey('key_ana_sayfa');   //O anki durumu durumu tutmasını sağlar
  var keyArama = const PageStorageKey('key_arama_sayfa');

  @override
  void initState() {

    super.initState();
    sayfaAna = AnaSayfa(keyAnaSayfa);
    sayfaArama = AramaSayfasi(keyArama);
    pageViewOrnek = const PageViewOrnek();
    tumSayfalar = [sayfaAna, sayfaArama, pageViewOrnek];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        title: const Text('Flutter Dersleri Bölüm 2'),
      ),
      body: secilenMenuItem <= tumSayfalar.length - 1    //Sayfalar arası geçişi sağlar
          ? tumSayfalar[secilenMenuItem]
          : tumSayfalar[0],
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  Theme bottomNavMenu() {     // Alt menu
    return Theme(   //Tüm hepsine uygulanması için Theme içerisine alındı
      data: ThemeData(
          canvasColor: Colors.cyan.shade100, primaryColor: Colors.orangeAccent),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'ExpansionTile',
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              activeIcon: Icon(Icons.call),    //Aktif olunca farklı ikon göstermemizi sağlar
              label: 'Liste',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'PageView',
              backgroundColor: Colors.tealAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Profil',
              backgroundColor: Colors.brown),
        ],
        type: BottomNavigationBarType.shifting,    //fixed => renksiz yapar
        // 4 ve fazla geçiş olduğunda bu satır yazılmak zorunda
        currentIndex: secilenMenuItem,
        onTap: (index) {
          setState(() {
            secilenMenuItem = index;
            if (index == 3) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const TabOrnek()))
                  .then((bb) {
                secilenMenuItem = 0;
              });
            }
          });
        },
      ),
    );
  }
}
