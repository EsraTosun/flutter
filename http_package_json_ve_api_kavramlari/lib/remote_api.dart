import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'model/user_model.dart';

//İnternetten veri çekmek için DİO kullanılır

class RemoteApi extends StatefulWidget {
  const RemoteApi({Key? key}) : super(key: key);

  @override
  _RemoteApiState createState() => _RemoteApiState();
}

class _RemoteApiState extends State<RemoteApi> {

  Future<List<UserModel>> _getUserList() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/users');
      List<UserModel> _userList = [];
      // 200 htpp dünyasında işlemin başarı ile gerçekleştridiğini söyleyen koddur
      if (response.statusCode == 200) {
        _userList =
            (response.data as List).map((e) => UserModel.fromMap(e)).toList();
      }
      return _userList;
    } on DioException catch (e) {
      return Future.error(e.message as Object);
    }
  }

  late final Future<List<UserModel>> _userList;

  @override
  void initState() {
    super.initState();
    _userList = _getUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remote Api with Dio'),
      ),
      body: Center(
        child: FutureBuilder<List<UserModel>>(
          future: _userList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var userList = snapshot.data!;
              return ListView.builder(
                itemBuilder: (context, index) {
                  var user = userList[index];
                  return ListTile(
                    title: Text(user.email),
                    subtitle: Text(user.address.toString()),
                    leading: Text(user.id.toString()),
                  );
                },
                itemCount: userList.length,
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else
             { return const CircularProgressIndicator();}
          },
        ),
      ),
    );
  }
}
