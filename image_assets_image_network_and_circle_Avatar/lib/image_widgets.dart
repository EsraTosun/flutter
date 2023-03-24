import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imgURL = 'https://upload.wikimedia.org/wikipedia/'
        'commons/thumb/9/95/Skyshot.jpg/150px-Skyshot.jpg';
    String _logoURL = 'https://avatars.githubusercontent.com/u/114695418?s=96&v=4';
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                      color: Colors.red.shade200,
                      child: Image.asset(
                        'assets/images/FullMoon2010.jpg',
                        fit: BoxFit.cover,  //resmi tüm containera yayılmasını sağlar
                      )
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.red.shade200,
                      child: Image.network(
                        _imgURL,
                        fit: BoxFit.cover,
                      )
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red.shade200,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        child: Text(
                          'E',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        backgroundImage: NetworkImage(_logoURL),
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.red,
                        radius: 90,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Expanded(
                child: FadeInImage.assetNetwork(
                    fit: BoxFit.cover,
                    placeholder: 'assets/images/loading.jpg',
                    image: _imgURL
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 100,
                child: Placeholder(
                  color: Colors.blue,
                ),
            ),
          ),
        ],
      ),
    );
  }
}


//Image.assets() => resmi ekranda göstermemiz sağlar
//Genelde Image.asset ve Image.network kullanılır.
// Yol durumuna gçre değişiklik gösterilir
//fit: BoxFit.cover => Resmi tüm conteinra yayılmasını sağlar

//CircleAvatar() => Sosyal medyada profil fotoğrafımızda yuvarlağın içinde
//kullanacağımız yapı
//foregroundColor: => içinde konulan şeyin rengini değiştirir

//IntrinsicHeight() => İçindeki en fazla olana göre yüksekliği sabitler
//en düşüğüde o yüksekliğe getirir.
//crossAxisAlignment: CrossAxisAlignment.stretch => hepsi aynı yüksekliğe gelir
//çok tercih etmeyin

//FadeInImage.assetNetwork => internetten gelen resim yüklenesiye kadar gösterilecek olan resmi görmemizi sağlar