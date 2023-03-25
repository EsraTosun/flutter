import 'package:flutter/material.dart';

class TemelButonTurleri extends StatelessWidget {
  const TemelButonTurleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: (){},
            onLongPress: (){  //Uzun basıldığında bu işlemi yap demek
              debugPrint('Uzun basıldı');
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: Text('textButton')
        ),
        TextButton.icon(
            onPressed: (){},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if(states.contains(MaterialState.pressed))
              {
                return Colors.indigoAccent;
              }
              if(states.contains(MaterialState.hovered))
                {
                  return Colors.orange;
                }
              return null;
            }),
            //backgroundColor: MaterialStateProperty.all(Colors.red),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            overlayColor: 
            MaterialStateProperty.all(Colors.yellow.withOpacity(0.5)),
          ),
            icon: Icon(Icons.add),
            label: Text('TextButton.icon'),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              foregroundColor: Colors.black,
            ),
            onPressed: (){},
            child: Text('ElevatedButoon')
        ),
        ElevatedButton.icon(
            onPressed: (){},
            label: Text('Elevated.icon'),
            icon: Icon(Icons.access_alarms_outlined),
        ),
        OutlinedButton(
            onPressed: (){},
            child: Text('OutLined')
        ),
        OutlinedButton.icon(
            onPressed: (){},
            style: OutlinedButton.styleFrom(
              shape: StadiumBorder(),
              side: BorderSide(color: Colors.purple,width: 2),
            ),
            icon: Icon(Icons.adb),
            label: Text('Outlined.icon')
        ),
        OutlinedButton.icon(
            onPressed: (){},
            icon: Icon(Icons.adb),
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2,color: Colors.red),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30),),
              ),
            ),
            label: Text('Outlined.icon')
        ),
      ],
    );
  }
}


//MaterialStateProperty => kullanmamızın nedeni;
//butonun üzerine mi geldiği ya da başka durumda mı
// olacağını bildirmemiz gerektiğindendir

//ElevatedButton.styleFrom => yukarıdaki ile aynı işi yapar
