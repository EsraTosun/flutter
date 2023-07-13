import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_inputs/global_key_kullanimi.dart';
//import 'package:flutter_inputs/stepper_kullanimi.dart';
//import 'package:flutter_inputs/text_form_field_kullanimi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextFieldIslemleri(title: '',),
    );
  }
}

class TextFieldIslemleri extends StatefulWidget {
  final String title;
  TextFieldIslemleri({Key? key, required this.title}) : super(key: key);

  @override
  _TextFieldIslemleriState createState() => _TextFieldIslemleriState();
}

class _TextFieldIslemleriState extends State<TextFieldIslemleri> {
  late TextEditingController _emailController;
  late FocusNode _focusNode;   //Panelin içi
  int maxLineCount = 1;

  @override
  void initState() {      //Oluşturmamızı sağlar
    super.initState();
    _emailController = TextEditingController(text: 'emre@emre.com');   //veriyi ekrana direk yazdırır
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {   //Yapılan işlemde ekranda değişiklik yapılması isteniyorsa setState içerisinde yaz
        if (_focusNode.hasFocus) {
          maxLineCount = 3;
        } else {
          maxLineCount = 1;
        }
      });
    });
  }

  @override
  void dispose() {        //Yok etmemizi sağlar
    _emailController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              focusNode: _focusNode,
              controller: _emailController,
              keyboardType: TextInputType.number,      //Klavyenin türü
              textInputAction: TextInputAction.next,    //Klayvenin enter kısmının sembolü
              autofocus: true,     //Uygulama başladığında bu kutudan başlar
              maxLines: maxLineCount,    //max satır sayısı
              maxLength: 20,   //max karakter sayısı
              onChanged: (String deger) {    //her karakter yazıldığında geri dönüş yapar
                if (deger.length > 3) {
                  setState(() {   //Her alanda verinin güncellemesini sağlar
                    _emailController.value = TextEditingValue(
                      text: deger,
                      selection: TextSelection.collapsed(offset: deger.length),
                      //imlecin her işlemde nereye gitmesine karar verir
                    );
                  });
                }
              },
              cursorColor: Colors.pink,   //imlec rengi
              decoration: InputDecoration(
                labelText: 'Label text',  //Panelin üzerine yazıyı gösterir.
                hintText: 'Email giriniz',   //Yazı yazıldığına yok olur
                //icon: Icon(Icons.add),
                prefixIcon: Icon(Icons.email),   //sol tarafa ikon koyar
                suffixIcon: Icon(Icons.access_alarms_outlined),      //sağ tarafa ikon koyar
                filled: true,    //İçini doldurma izni verir.
                fillColor: Colors.orange.shade100,
                border: OutlineInputBorder(     //Etrafına çerçeve yapar
                  borderRadius: BorderRadius.all(
                    Radius.circular(18.0),
                  ),
                ),
              ),
              onSubmitted: (String deger) {   //onaylandığı takdirde ekrana yazdırır
                print("submit " + deger);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_emailController.text),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _emailController.text = 'emrealtunbilek@gmail.com';
          });
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
