// import 'package:lec1/domain/model/api_users.dart';
import 'package:project/domain/model/api_users.dart';

import 'package:dio/dio.dart';



String baseUrl = "https://jsonplaceholder.typicode.com/";

class UsersService {
  String path = "albums";
  final dio = Dio();

  Future<List<UserFromApi>> getUsersData() async {
    List<UserFromApi> users = [];
    try {
      var res = await dio.get("${baseUrl}${path}");
        print(res);
      res.data.forEach((item) {
        UserFromApi user = UserFromApi.fromJson(item);
        users.add(user);
      });
    } catch (e) {
      print(e);
    }
    return users;
  }
}
