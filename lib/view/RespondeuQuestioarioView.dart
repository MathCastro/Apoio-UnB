import 'dart:io';
import 'package:apoio_unb/controller/ConsultaController.dart';
import "dart:math";
import '../res/Colors.dart';

import 'package:flutter/material.dart';

class RespondeuQuestionarioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _random = new Random();
    var list = ['Nepasd','SOU','Caep','APTA'];
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Positioned(
              top: height * 0.15,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 4,
                child: Container(
                  width: width - 72,
                  height: height * 0.7,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 16),
                        child: Image.asset(
                          'assets/drawable-xhdpi/illustration-obrigado-por-responder-oquestionario.png',
                          width: width - 225,
                        ),
                      ),
                      Text("Obrigado por responder",
                          style: TextStyle(
                              color: Color(0xff3b4d57),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 18.0)),
                      Text("o questionário!",
                          style: TextStyle(
                              color: Color(0xff3b4d57),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 18.0)),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25, right: 25, top: 20, bottom: 20),
                        child: Text("Encontramos a melhor unidade para você:",
                            style: const TextStyle(
                                color: const Color(0x99000000),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontSize: 14.0)),
                      ),
                      Text(list[_random.nextInt(list.length)],
                          style: const TextStyle(
                              color: const Color(0xde000000),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 20.0)),
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
                            onPressed: () {
                              Navigator.pushNamed(context, '/info_unidade');
                            },
                            child: Center(
                              child: Text(
                                "Informações",
                                style: TextStyle(color: colorMutedBlue),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                          width: width - 72 - 56,
                          child: RaisedButton(
                            color: colorMutedBlue,
                            onPressed: () {
                              Navigator.pushNamed(context, '/nova_consulta_unid_atend');
                            },
                            child: Center(
                              child: Text(
                                "Agendar Consulta",
                                style: TextStyle(color: Colors.white),
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
