import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  const GridViewOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, //yan yana eleman sayısı
      ),
      itemBuilder: (BuildContext context,int index){
        return GestureDetector(
          child: Container(
            alignment: Alignment.bottomCenter,  //İçindekileri ortalar
            decoration: BoxDecoration(
              border: Border.all(  //Çerçeve
                  color: Colors.orange,
                  width: 5,
              ),
                /*Border(  //Çerçeve oluştururr
                bunu kullandığımızda köşelere border radius veremeyiz
                  top: BorderSide(  //üst çerçeve kenarı özellikleri
                      color: Colors.green,
                      width: 5,
                      style: BorderStyle.solid,
                  ),
                  bottom: BorderSide(  //alt çerçeve kenarı özellikleri
                      color: Colors.purple,
                      width: 10,
                  ),
              ),  */
              //borderRadius: BorderRadius.all(Radius.circular(20.0)),
              boxShadow: [  //Gölgelendirme yapar
                BoxShadow(
                  color: Colors.red,
                  offset: Offset(10.0,5.0),  //Gölge Boyutu
                  blurRadius: 20, //Gölgelendirme derecesi
                ),
              ],
              shape: BoxShape.circle,  //Container'ı yuvarlak yapar
                           // Bunu kullanacaksak radiusdan vazgeçmeliyiz
              color: Colors.blue[100 * ((index+1) % 8)],
              gradient: LinearGradient(colors:
                  [Colors.yellow,Colors.red],
                  begin: Alignment.topCenter, //başlayacağı nokta
                  end: Alignment.bottomCenter,  //bitiş noktası
              ),
              image: DecorationImage(
                  image: AssetImage("assets/images/esra.jpg"),
                  fit: BoxFit.contain,  //image'ın tüm containera(fill) yayılmasını sağlar
                  alignment: Alignment.topCenter
              ),
            ),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Merhaba Flutter $index',
                textAlign: TextAlign.center,  //satırda ortaya getirir
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
                ),
              ),
            ),
          ),
          onTap: () => debugPrint("Merhaba Flutter $index"),  //Tek Tıklama
          onDoubleTap: () => debugPrint("Merhaba Flutter $index çift tıklanıldı"), //Çift Tıklama
          onLongPress: () => debugPrint("Merhaba Flutter $index uzun basıldı"), //Çift Tıklama
          onHorizontalDragStart: (e) => debugPrint("Merhaba Flutter $index sürüklendi $e"), //Çift Tıklama
        );
      },
    );
  }
}

//LinearGradient => Container renginin nerden başlayıp nerden biteceğini gösteririz

//GestureDetector() => Container'a tıklanabilirlik özelliği getiririz
