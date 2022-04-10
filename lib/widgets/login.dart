import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.blueAccent, fontSize: 30),
                    decoration: new InputDecoration(
                      labelText: "Login:",
                      labelStyle: TextStyle(color: Colors.white),
                    )), //TextField
                TextFormField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.blueAccent, fontSize: 30),
                    decoration: InputDecoration(
                      labelText: "Senha:",
                      labelStyle: TextStyle(color: Colors.white),
                    )),
                ButtonTheme(
                  height: 40.0,
                  child: RaisedButton(
                    onPressed: () => {
                      print("pressionei o botão"),
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    child: const Text(
                      "Enviar",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ), //Text
                    color: Colors.blueAccent,
                  ), //RaisedButton
                ), //TextField
              ],
            ),
          ),
        ));
  }
}
