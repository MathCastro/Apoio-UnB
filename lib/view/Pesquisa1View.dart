import 'dart:io';
import '../res/Colors.dart';

import 'package:flutter/material.dart';

class Pesquisa1View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Formulário de Atendimento",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: height,
            color: colorLightBlueGreyTwo,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/drawable-xhdpi/Flores-fundo.png'),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset(
                    'assets/drawable-xhdpi/illustration-novo-formulario.png',
                    width: width - 144,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    "Responda as perguntas e seja direcionado para a unidade de atendimento mais adequada para suas necessidades",
                    style: TextStyle(
                        color: colorMutedBlue,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 20.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SizedBox(
                    width: width-100,
                    height: 36.0,
                    child: RaisedButton(
                      color: colorMutedBlue,
                      onPressed: () {
                        Navigator.pushNamed(context, '/pesquisa2');
                      },
                      child: Center(
                        child: Text(
                          "Começar",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
