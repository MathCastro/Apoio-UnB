import 'dart:io';
import '../res/Colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class NovaConsultaProfDispView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Nova Consulta",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              height: height * 0.4,
              color: colorLightBlueGreyTwo,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Image.asset(
                'assets/drawable-xhdpi/illustration-profissionais-disponiveis.png',
                width: width - 180,
              ),
            ),
            Positioned(
              top: height * 0.4,
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
                        Text('Rodrigão da Massa'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                        value: 1,
                        activeColor: colorAquamarine,
                        groupValue: 1, onChanged: (int value) {},
                      ),
                        Text('Matheus Nerdão'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                        value: 1,
                        activeColor: colorAquamarine,
                        groupValue: 1, onChanged: (int value) {},
                      ),
                        Text('King Tchezarè'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                        value: 1,
                        activeColor: colorAquamarine,
                        groupValue: 1, onChanged: (int value) {},
                      ),
                        Text('Trollador do futuro'),
                      ],
                    ),
                    RaisedButton(
                      color: colorMutedBlue,
                      onPressed: () {
                        Navigator.pushNamed(context, '/consulta_agendada_com_sucesso');
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
