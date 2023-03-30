import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  const GridViewOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 100,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, //yan yana eleman sayısı
        ),
        itemBuilder: (BuildContext context,int index){
          return Container(
            color: Colors.teal[100 * ((index+1) % 8)],
            alignment: Alignment.center,  //İçindekileri ortalar
            child: Text(
              'Merhaba Flutter $index',
              textAlign: TextAlign.center,  //satırda ortaya getirir
            ),
          );
        },
    );
  }

  GridView GridViewExtent() {
    return GridView.extent(
    //reverse: true, //Elemanları tersten sıralar
    maxCrossAxisExtent: 100,  //Her bir elemanın genişliği en fazla olacak şekilde ayarla
    primary: false,  //eleman varmış gibi kaydırma yapmamızı sağlar
    scrollDirection: Axis.horizontal,  //Elemanlar yukarıdan aşığ değil sağdan sola doğru kayar
    padding: EdgeInsets.all(10),  //Her bir öğenin etrafında 10'ar boşluk olur
    crossAxisSpacing: 20,  //sütunların arasındaki boşluk
    mainAxisSpacing: 40, //satırlar arasında boşluk
    children: [
      Container(
        color: Colors.teal.shade300,
        alignment: Alignment.center,  //İçindekileri ortalar
        child: Text(
          'Merhaba Flutter 1',
          textAlign: TextAlign.center,  //satırda ortaya getirir
        ),
      ),
      Container(
        color: Colors.teal.shade300,
        alignment: Alignment.center,  //İçindekileri ortalar
        child: Text(
          'Merhaba Flutter 2',
          textAlign: TextAlign.center,  //satırda ortaya getirir
        ),
      ),
      Container(
        color: Colors.teal.shade300,
        alignment: Alignment.center,  //İçindekileri ortalar
        child: Text(
          'Merhaba Flutter 3',
          textAlign: TextAlign.center,  //satırda ortaya getirir
        ),
      ),
      Container(
        color: Colors.teal.shade300,
        alignment: Alignment.center,  //İçindekileri ortalar
        child: Text(
          'Merhaba Flutter 4',
          textAlign: TextAlign.center,  //satırda ortaya getirir
        ),
      ),
      Container(
        color: Colors.teal.shade300,
        alignment: Alignment.center,  //İçindekileri ortalar
        child: Text(
          'Merhaba Flutter 5',
          textAlign: TextAlign.center,  //satırda ortaya getirir
        ),
      ),
      Container(
        color: Colors.teal.shade300,
        alignment: Alignment.center,  //İçindekileri ortalar
        child: Text(
          'Merhaba Flutter 6',
          textAlign: TextAlign.center,  //satırda ortaya getirir
        ),
      ),
      Container(
        color: Colors.teal.shade300,
        alignment: Alignment.center,  //İçindekileri ortalar
        child: Text(
          'Merhaba Flutter 7',
          textAlign: TextAlign.center,  //satırda ortaya getirir
        ),
      ),
      Container(
        color: Colors.teal.shade300,
        alignment: Alignment.center,  //İçindekileri ortalar
        child: Text(
          'Merhaba Flutter 8',
          textAlign: TextAlign.center,  //satırda ortaya getirir
        ),
      ),
      Container(
        color: Colors.teal.shade300,
        alignment: Alignment.center,  //İçindekileri ortalar
        child: Text(
          'Merhaba Flutter 9',
          textAlign: TextAlign.center,  //satırda ortaya getirir
        ),
      ),
      Container(
        color: Colors.teal.shade300,
        alignment: Alignment.center,  //İçindekileri ortalar
        child: Text(
          'Merhaba Flutter 10',
          textAlign: TextAlign.center,  //satırda ortaya getirir
        ),
      ),
      Container(
        color: Colors.teal.shade300,
        alignment: Alignment.center,  //İçindekileri ortalar
        child: Text(
          'Merhaba Flutter 11',
          textAlign: TextAlign.center,  //satırda ortaya getirir
        ),
      ),
      Container(
        color: Colors.teal.shade300,
        alignment: Alignment.center,  //İçindekileri ortalar
        child: Text(
          'Merhaba Flutter 12',
          textAlign: TextAlign.center,  //satırda ortaya getirir
        ),
      ),
      Container(
        color: Colors.teal.shade300,
        alignment: Alignment.center,  //İçindekileri ortalar
        child: Text(
          'Merhaba Flutter 13',
          textAlign: TextAlign.center,  //satırda ortaya getirir
        ),
      ),
      Container(
        color: Colors.teal.shade300,
        alignment: Alignment.center,  //İçindekileri ortalar
        child: Text(
          'Merhaba Flutter 14',
          textAlign: TextAlign.center,  //satırda ortaya getirir
        ),
      ),
      Container(
        color: Colors.teal.shade300,
        alignment: Alignment.center,  //İçindekileri ortalar
        child: Text(
          'Merhaba Flutter 15',
          textAlign: TextAlign.center,  //satırda ortaya getirir
        ),
      ),
      Container(
        color: Colors.teal.shade300,
        alignment: Alignment.center,  //İçindekileri ortalar
        child: Text(
          'Merhaba Flutter 16',
          textAlign: TextAlign.center,  //satırda ortaya getirir
        ),
      ),
    ],
  );
  }

  GridView GridVievCount() {
    return GridView.count(
      crossAxisCount: 3,  //bir satırda kaç eleman olcağını belirtiriz
      reverse: true, //Elemanları tersten sıralar
      primary: false,  //eleman varmış gibi kaydırma yapmamızı sağlar
      scrollDirection: Axis.horizontal,  //Elemanlar yukarıdan aşığ değil sağdan sola doğru kayar
      padding: EdgeInsets.all(10),  //Her bir öğenin etrafında 10'ar boşluk olur
      crossAxisSpacing: 20,  //sütunların arasındaki boşluk
      mainAxisSpacing: 40, //satırlar arasında boşluk
      children: [
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,  //İçindekileri ortalar
          child: Text(
            'Merhaba Flutter 1',
            textAlign: TextAlign.center,  //satırda ortaya getirir
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,  //İçindekileri ortalar
          child: Text(
            'Merhaba Flutter 2',
            textAlign: TextAlign.center,  //satırda ortaya getirir
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,  //İçindekileri ortalar
          child: Text(
            'Merhaba Flutter 3',
            textAlign: TextAlign.center,  //satırda ortaya getirir
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,  //İçindekileri ortalar
          child: Text(
            'Merhaba Flutter 4',
            textAlign: TextAlign.center,  //satırda ortaya getirir
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,  //İçindekileri ortalar
          child: Text(
            'Merhaba Flutter 5',
            textAlign: TextAlign.center,  //satırda ortaya getirir
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,  //İçindekileri ortalar
          child: Text(
            'Merhaba Flutter 6',
            textAlign: TextAlign.center,  //satırda ortaya getirir
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,  //İçindekileri ortalar
          child: Text(
            'Merhaba Flutter 7',
            textAlign: TextAlign.center,  //satırda ortaya getirir
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,  //İçindekileri ortalar
          child: Text(
            'Merhaba Flutter 8',
            textAlign: TextAlign.center,  //satırda ortaya getirir
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,  //İçindekileri ortalar
          child: Text(
            'Merhaba Flutter 9',
            textAlign: TextAlign.center,  //satırda ortaya getirir
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,  //İçindekileri ortalar
          child: Text(
            'Merhaba Flutter 10',
            textAlign: TextAlign.center,  //satırda ortaya getirir
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,  //İçindekileri ortalar
          child: Text(
            'Merhaba Flutter 11',
            textAlign: TextAlign.center,  //satırda ortaya getirir
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,  //İçindekileri ortalar
          child: Text(
            'Merhaba Flutter 12',
            textAlign: TextAlign.center,  //satırda ortaya getirir
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,  //İçindekileri ortalar
          child: Text(
            'Merhaba Flutter 13',
            textAlign: TextAlign.center,  //satırda ortaya getirir
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,  //İçindekileri ortalar
          child: Text(
            'Merhaba Flutter 14',
            textAlign: TextAlign.center,  //satırda ortaya getirir
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,  //İçindekileri ortalar
          child: Text(
            'Merhaba Flutter 15',
            textAlign: TextAlign.center,  //satırda ortaya getirir
          ),
        ),
        Container(
          color: Colors.teal.shade300,
          alignment: Alignment.center,  //İçindekileri ortalar
          child: Text(
            'Merhaba Flutter 16',
            textAlign: TextAlign.center,  //satırda ortaya getirir
          ),
        ),
      ],
  );
  }
}


//GridView.extent ile GridView.count arasında fark;
//GridView.count'da satır yada sutuna kaç eleman konulacağını belirtebiliriz
//GridView.extent'da satıra kaç eleman geleceğini belirtemeyiz; Ancak her eleman
//en fazla x genişliğinde olsun diye biliriz

//GENEL OLARAK GridView.count KULLAN. DAHA KULLANIŞLI