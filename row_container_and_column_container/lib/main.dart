import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Dersleri'),
          backgroundColor: Colors.cyan,
        ),
        body: Container(
          color: Colors.red.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dartRowunuOlustur(),
              dartColumunuOlustur(),
            ],
          ),
        ),


      ),
    );
  }

  Expanded dartColumunuOlustur() {
    return Expanded(
              child: Container(
                child: Column(
                  children: [
                    dartColumunContaineriniOlustur(Colors.orange.shade200, 'D'),
                    dartColumunContaineriniOlustur(Colors.orange.shade300, 'E'),
                    dartColumunContaineriniOlustur(Colors.orange.shade400, 'R'),
                    dartColumunContaineriniOlustur(Colors.orange.shade500, 'S'),
                    dartColumunContaineriniOlustur(Colors.orange.shade600, 'L'),
                    dartColumunContaineriniOlustur(Colors.orange.shade700, 'E'),
                    dartColumunContaineriniOlustur(Colors.orange.shade800, 'R'),
                    dartColumunContaineriniOlustur(Colors.orange.shade900, 'İ'),
                  ],
                ),
              ),
            );
  }

  Row dartRowunuOlustur() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                dartRowununContaineriniOlustur(Colors.orange.shade200, 'D'),
                dartRowununContaineriniOlustur(Colors.orange.shade300, 'A'),
                dartRowununContaineriniOlustur(Colors.orange.shade400, 'R'),
                dartRowununContaineriniOlustur(Colors.orange.shade500, 'T'),
              ],
            );
  }

  Container dartRowununContaineriniOlustur(Color colors,String harf)
  {
    return Container(
          width: 75,
          height: 75,
          alignment: Alignment.center,
          color: colors,
          child: Text(
            harf,
            style: TextStyle(fontSize: 48),
          ),
    );
  }

  Expanded dartColumunContaineriniOlustur(Color colors,String harf)
  {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 15),
        width: 60,
        height: 60,
        alignment: Alignment.center,
        color: colors,
        child: Text(
          harf,
          style: TextStyle(fontSize: 48),
        ),
      ),
    );
  }


}
