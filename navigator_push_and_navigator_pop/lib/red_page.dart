import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);  //cons yazıyorsa değişken tanımlayamayız
  int _rasgeleSayi = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(  //AppBar geri tuşunun çalışmasını durdurur
      onWillPop: (){
        print('on will pop çalıştı');
        if(_rasgeleSayi == 0)
          {
            _rasgeleSayi = Random().nextInt(100);
            Navigator.pop(context, _rasgeleSayi);  //Geri tuşunu çalıştırırız
          }

        return Future.value(false);  //GEri tuşunu durduğumuz yer
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Red Page'),
          backgroundColor: Colors.red,
          //automaticallyImplyLeading: false,  //Geri tuşunu kaldırırız
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Red Page',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    _rasgeleSayi = Random().nextInt(100);
                    print("Üretilen sayi : $_rasgeleSayi");
                    Navigator.of(context).pop(_rasgeleSayi);  //Geldiğimiz sayfaya geri dönmemizi sağlar
                  },
                  child: Text('Geri Dön'),
              ),
              ElevatedButton(
                onPressed: (){
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
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/orangePage');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange.shade600,
                ),
                child: Text('Goto orange',),
              ),
              ElevatedButton(  //Olmayan bir sayfaya gitmeye çalışırsa
                onPressed: (){
                  Navigator.pushNamed(context, '/orangePage2');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: Text('Olmayan Bir Sayfa',),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
