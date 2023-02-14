import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ongkir_app/app/data/user_model.dart';

void main() async {
  // http GET
  /* Uri url = Uri.parse("https://reqres.in/api/users/2");
  final response = await http.get(url);

  //final data = (json.decode(response.body) as Map<String, dynamic>);

  // ambil model yang dibuat .from json karena akan membuat sebuah class dari json
  // dibawah adalah step 1 memanggil model dari json nya
  /* UserModel.fromJson(json.decode(response.body) as Map<String, dynamic>); */
  // step selanjutnya kita bias memasang final datanya
  final user =
      UserModel.fromJson(json.decode(response.body) as Map<String, dynamic>);
  // datanya sudah bisa diambil
  print(user.data.firstName);
  // data ini bisa di breakdown lagi berdasarkan modelnya dan merubah menajdi string
  final dataUser = user.data;
  final dataSupport = user.support;
  // setelah di breakdown di atas bisa di ambil langsung string nya

  print("${dataUser.firstName} ${dataUser.lastName}");

  // bila akan di balikan lagi dari array menjadi json bisa manfaatkan to.json
  final userJson = userModelToJson(user);

  print(userJson); */

  // http POST
  Uri url2 = Uri.parse("https://reqres.in/api/users");
  final response2 = await http.post(
    url2,
    body: {"name": "morpheus", "job": "leader"},
  );

  print(response2.body);
}
