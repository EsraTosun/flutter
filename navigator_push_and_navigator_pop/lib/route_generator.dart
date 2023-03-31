import 'package:bir_navigator_push_and_navigator_pop/main.dart';
import 'package:bir_navigator_push_and_navigator_pop/ogrenci_detay.dart';
import 'package:bir_navigator_push_and_navigator_pop/ogrenci_listesi.dart';
import 'package:bir_navigator_push_and_navigator_pop/orange_page.dart';
import 'package:bir_navigator_push_and_navigator_pop/purple_page.dart';
import 'package:bir_navigator_push_and_navigator_pop/yellow_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RouteGenerator{

  static Route<dynamic>? _routeOlustur(Widget gidilecekWidget,RouteSettings settings) {
    if(defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
          settings: settings,
          builder: (context) => gidilecekWidget,
      );
    }else {
      return MaterialPageRoute(
          settings: settings,
          builder: (context) => gidilecekWidget,
      );
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings){

    switch(settings.name){

      case '/':
        return _routeOlustur(
            AnaSayfa(),
            settings,
        );

      case '/orangePage':
        return _routeOlustur(
            OrangePage(),
            settings,
        );

      case '/yellowPage':
        return _routeOlustur(
            YellowPage(),
            settings,
        );

      case '/purplePage':
        return _routeOlustur(
          PurplePage(),
          settings,
        );

      case '/ogrenciListesi':
        print(settings.name);
        print(settings.arguments);
        return _routeOlustur(
            OgrenciListesi(),
            settings,
        );

      case '/ogrenciDetay':
        var parametredekiOgrenci = settings.arguments as Ogrenci;
        return _routeOlustur(
            OgrenciDetay(secilenOgrenci: parametredekiOgrenci),
            settings,
        );

      default:
        return MaterialPageRoute(            //Olmayan bir sayfaya gidilmeye
        builder: (context) => Scaffold(       //çalışıldığında hata vermek yerine
            appBar: AppBar(                   //Bu sayfayı çalıştır demek
              title: Text('Error'),
          ),
            body: Center(
              child: Text('404'),
          ),
        )
      );
    }
  }
}