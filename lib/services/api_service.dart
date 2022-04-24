import 'dart:convert';

import 'package:http/http.dart';
import 'package:school/models/usuario.dart';

class ApiService {
  final String apiUrl = "http://localhost:8084/api";


  Future<void> createContact(Authenticat authenticat) async {
    print(authenticat.usuario);
    print(authenticat.senha);
    Map data = {
      'usuario': authenticat.usuario,
      'senha': authenticat.senha
    };

    final Response response = await post(
      apiUrl,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      print(response.body);
    }
    //   return Authenticat.fromJson(json.decode(response.body));
    // } else {
    //   throw Exception('Falha ao criar contato');
    // }
  }


}