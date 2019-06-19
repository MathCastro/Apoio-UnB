import 'dart:io';
import '../res/Colors.dart';

import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
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
                  child: Image.asset('assets/drawable-xhdpi/Flores-fundo.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text("Agende e facilite seu atendimento com o Apoio UnB!",
                  style: TextStyle(
                      color: colorMutedBlue,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Image.asset(
                'assets/drawable-xhdpi/logo-apoio-unb.png',
                width: width - 144,
              ),
            ),
            Positioned(
              top: height * 0.8 - 91,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 4,
                child: Container(
                  width: width - 72,
                  height: 182,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: SizedBox(
                          width: width - 72 - 56,
                          child: RaisedButton(
                            color: colorMutedBlue,
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                          width: width - 72 - 56,
                          child: OutlineButton(
                            borderSide: BorderSide(
                              color: colorMutedBlue, //Color of the border
                              style: BorderStyle.solid, //Style of the border
                              width: 0.8, //width of the border
                            ),
                            color: Colors.white,
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                "Registrar",
                                style: TextStyle(color: colorMutedBlue),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: SizedBox(
                          width: width - 72 - 56,
                          child: FlatButton(
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                "Termos de Compromisso",
                                style: TextStyle(color: colorMutedBlue),
                              ),
                            ),
                          ),
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
}
