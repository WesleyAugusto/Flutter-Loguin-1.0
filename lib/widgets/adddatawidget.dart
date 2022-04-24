
import 'package:flutter/material.dart';
import 'package:school/models/register.dart';

import '../services/api_service.dart';


class AddDataWidget extends StatefulWidget {
  AddDataWidget();

  @override
  _AddDataWidgetState createState() => _AddDataWidgetState();
}

class _AddDataWidgetState extends State<AddDataWidget> {
  _AddDataWidgetState();

  final ApiService api = ApiService();
  final _addFormKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar Conta'),
      ),
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
                              Text('Login'),
                              TextFormField(
                                controller: _userNameController,
                                decoration: const InputDecoration(
                                  hintText: 'Login',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Login Invalido';
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
                              Text('Primeiro Nome'),
                              TextFormField(
                                controller: _firstNameController,
                                decoration: const InputDecoration(
                                  hintText: 'Primeiro Nome',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Nome Invalido';
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
                              Text('Sobre Nome'),
                              TextFormField(
                                controller: _lastNameController,
                                decoration: const InputDecoration(
                                  hintText: 'Sobre Nome',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Sobre Nome Invalido';
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
                              Text('Email'),
                              TextFormField(
                                controller: _emailController,
                                decoration: const InputDecoration(
                                  hintText: 'Email',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Email Invalido';
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
                                controller: _passwordController,
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
                                    api.registerUser(RegisterUser(userName: _userNameController.text, firstName: _firstNameController.text, lastName: _lastNameController.text, email: _emailController.text, password: _passwordController.text));

                                    Navigator.pop(context) ;
                                  }
                                },
                                child: Text('Save', style: TextStyle(color: Colors.white)),
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
}