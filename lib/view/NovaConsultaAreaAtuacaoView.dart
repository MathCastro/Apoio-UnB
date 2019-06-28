import 'dart:io';
import '../res/Colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class NovaConsultaAreaAtuacaoView extends StatelessWidget {
  
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
              height: height * 0.5,
              color: colorLightBlueGreyTwo,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 22.0, bottom: 40.0),
                child: Container(
                  color: Colors.white,
                  width: width,
                  height: 48.0,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Nova Consulta",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontSize: 20.0),
                          ),
                        ],
                      )),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset(
                'assets/drawable-xhdpi/illustration-area-de-atuacao.png',
                width: width - 180,
              ),
            ),
            Positioned(
              top: height * 0.5,
              child: Container(
                width: width - 72,
                height: height * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: width,
                      height: 48.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Selecione a área de atuação",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                        value: 1,
                        activeColor: colorAquamarine,
                        groupValue: 1, onChanged: (int value) {},
                      ),
                        Text('Psicologia'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                        value: 1,
                        activeColor: colorAquamarine,
                        groupValue: 1, onChanged: (int value) {},
                      ),
                        Text('Dependência'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                        value: 1,
                        activeColor: colorAquamarine,
                        groupValue: 1, onChanged: (int value) {},
                      ),
                        Text('Qualidade de vida'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                        value: 1,
                        activeColor: colorAquamarine,
                        groupValue: 1, onChanged: (int value) {},
                      ),
                        Text('Necessidades especiais'),
                      ],
                    ),
                    RaisedButton(
                      color: colorMutedBlue,
                      onPressed: () {
                      },
                      child: Center(
                        child: Text(
                          "Próximo",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
