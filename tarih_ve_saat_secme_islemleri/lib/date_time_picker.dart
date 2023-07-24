import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class TarihSaatOrnek extends StatefulWidget {
  @override
  _TarihSaatOrnekState createState() => _TarihSaatOrnekState();
}

class _TarihSaatOrnekState extends State<TarihSaatOrnek> {
  DateTime suan=DateTime.now();
  late DateTime ucAyOncesi;
  late DateTime yirmiGunSonrasi;

  @override
  void initState() {
    super.initState();
    ucAyOncesi = DateTime(suan.year, suan.month - 3, suan.day);
    yirmiGunSonrasi = DateTime(suan.year, suan.month, suan.day + 20);
  }

  TimeOfDay suankiSaat=TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date time picker"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              child: Text("Tarih Sec"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                showDatePicker(context: context, initialDate: suan, firstDate: ucAyOncesi, lastDate: yirmiGunSonrasi)
                .then((secilenTarih){
                  debugPrint(secilenTarih.toString());
                  debugPrint(secilenTarih!.toIso8601String());
                  debugPrint(secilenTarih.millisecondsSinceEpoch.toString());
                  debugPrint(secilenTarih.toUtc().toIso8601String());
                  debugPrint(secilenTarih.add(Duration(days: 20)).toString());
                  var yeniDate = DateTime.parse(secilenTarih.toUtc().toIso8601String());
                  debugPrint(yeniDate.toIso8601String());

                  print(formatDate(secilenTarih, [yyyy, '-', mm, '-', dd]));
                  print(formatDate(secilenTarih, [dd, '-', mm, '-', yyyy]));


                });
              },
            ),
            ElevatedButton(
              child: Text("Saat Sec"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                showTimePicker(context: context, initialTime: suankiSaat).then((secilenSaat){
                  debugPrint(secilenSaat!.format(context));
                  debugPrint(secilenSaat.hour.toString() + " : " + secilenSaat.minute.toString());
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}


//Değeri okumak için THEN denir.
