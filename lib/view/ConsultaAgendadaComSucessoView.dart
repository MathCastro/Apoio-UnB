import 'dart:io';
import '../res/Colors.dart';

import 'package:flutter/material.dart';

class ConsultaAgendadaComSucessoView extends StatelessWidget {
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
            Positioned(
              top: height * 0.3,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 4,
                child: Container(
                  width: width - 72,
                  height: height * 0.45,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 24,bottom: 16),
                        child: Image.asset(
                          'assets/drawable-xhdpi/illustration-consulta-agendada-com-sucesso.png',
                          width: width - 225,
                        ),
                      ),
                      Text("Sua consulta foi agendada!",
                          style: TextStyle(
                              color: Color(0xff3b4d57),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 18.0)),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                          width: width - 72 - 56,
                          child: RaisedButton(
                            color: colorMutedBlue,
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            child: Center(
                              child: Text(
                                "Ok!",
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
