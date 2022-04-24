import 'package:flutter/material.dart';

import '../models/usuario.dart';
import '../services/api_service.dart';
import 'adddatawidget.dart';

class Login extends StatefulWidget {
  Login();

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  _LoginState();

  final ApiService api = ApiService();
  final _addFormKey = GlobalKey<FormState>();
  final _usuarioController = TextEditingController();
  final _senhaController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Form(
        key: _addFormKey,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Card(
                child: Container(
                    padding: EdgeInsets.all(10.0),
                    width: 440,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Usuario'),
                              TextFormField(
                                controller: _usuarioController,
                                decoration: const InputDecoration(
                                  hintText: 'Usuario',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Usuario Invalido';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Senha'),
                              TextFormField(
                                controller: _senhaController,
                                decoration: const InputDecoration(
                                  hintText: 'Senha',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Senha Invalido';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              RaisedButton(
                                splashColor: Colors.red,
                                onPressed: () {
                                  if (_addFormKey.currentState.validate()) {
                                    _addFormKey.currentState.save();
                                    api.createContact(Authenticat(
                                        usuario: _usuarioController.text,
                                        senha: _senhaController.text));

                                    Navigator.pop(context);
                                  }
                                },
                                child: Text('Save',
                                    style: TextStyle(color: Colors.white)),
                                color: Colors.blue,
                              )
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              RaisedButton(
                                splashColor: Colors.red,
                                onPressed: () {
                                  _navigateToAddScreen(context);
                                },
                                child: Text('register',
                                    style: TextStyle(color: Colors.white)),
                                color: Colors.blue,
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                )
            ),
          ),
        ),
      ),
    );
  }

  _navigateToAddScreen (BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddDataWidget()),
    );
  }
}