import 'dart:io';
import 'package:apoio_unb/controller/auth/AuthController.dart';

import '../res/Colors.dart';

import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              height: height * 0.8,
              color: colorLightBlueGreyTwo,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/drawable-xhdpi/Flores-fundo.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                "Agende e facilite seu atendimento com o Apoio UnB!",
                style: TextStyle(
                    color: colorMutedBlue,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 20.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Image.asset(
                'assets/drawable-xhdpi/logo-apoio-unb.png',
                width: width - 144,
              ),
            ),
            Positioned(
              top: height * 0.8 - 150,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 4,
                child: Container(
                  width: width - 72,
                  height: 253,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: colorMutedBlue,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 20.0),
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, left: 20),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Matrícula:",
                                  style: TextStyle(
                                      color: colorMutedBlue,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 4),
                              child: Container(
                                height: 35,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            colorMutedBlue, //Color of the border
                                        style: BorderStyle
                                            .solid, //Style of the border
                                        width: 0.8, //width of the border
                                      ),
                                    ),
                                  ),
                                  initialValue: "admin@admin.com",
                                  onSaved: (String value) {
                                    email = value;
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, left: 20),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Senha:",
                                  style: TextStyle(
                                      color: colorMutedBlue,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 4),
                              child: Container(
                                height: 35,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            colorMutedBlue, //Color of the border
                                        style: BorderStyle
                                            .solid, //Style of the border
                                        width: 0.8, //width of the border
                                      ),
                                    ),
                                  ),
                                  initialValue: "admin123",
                                  obscureText: true,
                                  onSaved: (String value) {
                                    password = value;
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: RaisedButton(
                                color: colorMutedBlue,
                                onPressed: () {
                                  _formKey.currentState.save();
                                  login();
                                },
                                child: Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void login() async {
    try{
      await AuthController().signInWithEmailAndPassword(email, password);
      Navigator.pushNamed(context, '/home');
    } catch(e) {
      print(e);
    }
  }
}

// -------------------------------------------------------------------------------------------------------




