import 'package:flutter/material.dart';
import 'package:uc_global_key_kullanimi/sayac_state.dart';

class GlobalKeyKullanimi extends StatelessWidget {
  GlobalKeyKullanimi({Key? key}) : super(key: key);
  final sayacWidgetKey = GlobalKey<SayacWidgetState>();  //SayacWidgetState widgetındaki değişkene erişim sağlarız

  @override
  Widget build(BuildContext context) {
    print('1');
    return Scaffold(
      appBar: AppBar(
        title: Text('Global Key Kullanımı'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Butona basılma miktarı:'),
            SayacWidget(
              key: sayacWidgetKey,
            ),
            Text(sayacWidgetKey.currentState?.sayac.toString() ?? '0'),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          sayacWidgetKey.currentState!.arttir();
        },
      ),
    );
  }
}

