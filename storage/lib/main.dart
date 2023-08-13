import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:storage/services/local_storage_service.dart';
import 'package:storage/services/secure_storage.dart';
import 'shared_pref_kullanimi.dart';

final locator = GetIt.instance;

// SecureStorageService ile SharedPreferenceService tek fark saklanma şeklidir.
// SharedPreferenceService => Normal herkesin okuyabilceği şekilde kaydeder
// SecureStorageService => Şifreli kaydeder ve herkes okuyamaz.

void setup() {
  //locator.registerSingleton<LocalStorageService>(SharedPreferenceService());
  locator.registerLazySingleton<LocalStorageService>(()=> SecureStorageService());
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Storage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Storage Islemleri'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const SharedPreferenceKullanimi()));
              },
              child: const Text('Shared Preference / Secure Storage Kullanımı'),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
