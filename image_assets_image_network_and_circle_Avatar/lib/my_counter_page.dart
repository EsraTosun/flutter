import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({Key? key}) : super(key: key);

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('MyHomePage build çalıştı');
    return Scaffold(
      appBar: AppBar(
        title: Text('My Counter AppBar'),
      ),
      body: Center(
        child: Column( // Column y ekseni
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyNewTextWidget(),
            Text(
                _sayac.toString(),
                style: Theme.of(context).textTheme.headlineLarge
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayaciArttir();
          debugPrint('buton tıklandı ve sayac degeri $_sayac');
        },
        child: Icon(Icons.add),
      ),
    );
  }


  void sayaciArttir() {
    setState(() {
      _sayac++;
    });
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Butona basılma miktarı',
      style: TextStyle(
          fontSize: 24
      ),
    );
  }
}
