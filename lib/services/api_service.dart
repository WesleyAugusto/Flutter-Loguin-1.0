import 'dart:convert';

import 'package:http/http.dart';
import 'package:school/models/register.dart';
import 'package:school/models/usuario.dart';

class ApiService {
  final String apiUrl = "http://localhost:8084/api/v1/login";
  final String apiRegister = "http://localhost:8084/api/v1/register";


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

  Future<void> registerUser(RegisterUser registerUser) async {
    print(registerUser);
    Map data = {
      'userName': registerUser.userName,
      'firstName': registerUser.firstName,
      'lastName': registerUser.lastName,
      'email': registerUser.email,
      'password': registerUser.password,
    };

    final Response response = await post(
      apiRegister,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 201) {
      print(response.body);
    }
    //   return Authenticat.fromJson(json.decode(response.body));
    // } else {
    //   throw Exception('Falha ao criar contato');
    // }
  }

}