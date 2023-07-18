import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';  //email mi diye kontrol etmemizi sağlar

class TextFormFieldKullanimi extends StatefulWidget {
  const TextFormFieldKullanimi({Key? key}) : super(key: key);

  @override
  _TextFormFieldKullanimiState createState() => _TextFormFieldKullanimiState();
}

class _TextFormFieldKullanimiState extends State<TextFormFieldKullanimi> {
  String _email = '', _password = '', _userName = '';
  final _formKey = GlobalKey<FormState>(); //Bu sayede widget içerisinde herhangi bir yerde erişebiliriz

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Textform field kullanimi'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,  //İçine bir şey yazmaya bailadığımızda erorları verir.
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                TextFormField(
                  //initialValue: 'emrealtunbilek',
                  decoration: InputDecoration(
                    //errorStyle: TextStyle(color: Colors.orange),  //eror rengini ayarlama
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      hintText: 'Username'),
                  onSaved: (deger) {
                    _userName = deger!;
                  },
                  validator: (deger) {   //Eror
                    if (deger!.length < 4) {
                      return 'Username en az 4 karakter olmalı';
                    } else
                      return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  //initialValue: 'emrealtunbilek@gmail.com',
                  keyboardType: TextInputType.emailAddress,  //Klavye email asresi yazmaya uygun olur
                  decoration: InputDecoration(
                    //errorStyle: TextStyle(color: Colors.orange),
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Email'),
                  onSaved: (deger) {   //Gelen değeri değişkene aktarırız;
                    _email = deger!;
                  },
                  validator: (deger) {
                    if (deger!.isEmpty) {
                      return 'email boş olamaz';
                    } else if (!EmailValidator.validate(deger)) {  //Email doğru değil ise
                      return 'Geçerli mail giriniz';
                    } else
                      return null;
                  },
                ),
                SizedBox(
                  height: 10,  //Boşluk vermemizi sağlar
                ),
                TextFormField(
                  //initialValue: 'emrealtunbilek@gmail.com',
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    //errorStyle: TextStyle(color: Colors.orange),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Password'),
                  onSaved: (deger) {   //Gelen değeri değişkene aktarırız;
                    _password = deger!;
                  },
                  validator: (deger) {
                    if (deger!.length < 6) {
                      return 'Şifre ne az 6 karakter olmalı';
                    } else
                      return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    bool _validate = _formKey.currentState!.validate();  //Fromdaki değeri tutmamızı sağlar
                    if (_validate) {   //Eğer değerimiz null değilse veriler değişkenlerimize aktarılır.
                      _formKey.currentState!.save();
                      String result =
                          'username:$_userName\nemail:$_email\nSifre:$_password';

                      ScaffoldMessenger.of(context).showSnackBar(   //Değikeni ekranda yazdırmamızı sağlar
                        SnackBar(
                          backgroundColor: Colors.orange.shade300,
                          content: Text(
                            result,
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      );
                      _formKey.currentState!.reset();  //Formu resetlememizi sağlar.
                    }
                  },
                  child: Text('Onayla'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
