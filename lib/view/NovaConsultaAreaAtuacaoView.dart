import 'dart:io';
import 'package:apoio_unb/model/Consulta.dart';

import '../res/Colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class NovaConsultaAreaAtuacaoView extends StatefulWidget {
  @override
  _NovaConsultaAreaAtuacaoViewState createState() =>
      _NovaConsultaAreaAtuacaoViewState();
}

class _NovaConsultaAreaAtuacaoViewState
    extends State<NovaConsultaAreaAtuacaoView> {
  int area = 1;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
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
                'assets/drawable-xhdpi/illustration-area-de-atuacao.png',
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
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 1,
                          activeColor: colorAquamarine,
                          groupValue: area,
                          onChanged: (int value) {
                            area = value;
                            setState(
                              () {},
                            );
                          },
                        ),
                        Text('Psicologia'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 2,
                          activeColor: colorAquamarine,
                          groupValue: area,
                          onChanged: (int value) {
                            area = value;
                            setState(
                              () {},
                            );
                          },
                        ),
                        Text('Dependência'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 3,
                          activeColor: colorAquamarine,
                          groupValue: area,
                          onChanged: (int value) {
                            area = value;
                            setState(
                              () {},
                            );
                          },
                        ),
                        Text('Qualidade de vida'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 4,
                          activeColor: colorAquamarine,
                          groupValue: area,
                          onChanged: (int value) {
                            area = value;
                            setState(
                              () {},
                            );
                          },
                        ),
                        Text('Necessidades especiais'),
                      ],
                    ),
                    RaisedButton(
                      color: colorMutedBlue,
                      onPressed: () {
                        switch (area) {
                          case 1:
                            Consulta.area = "Psicologia";
                            break;
                          case 2:
                            Consulta.area = "Dependência";
                            break;
                          case 3:
                            Consulta.area = "Qualidade de vida";
                            break;
                          case 4:
                            Consulta.area = "Necessidades especiais";
                            break;
                          default:
                        }
                        Navigator.pushNamed(
                            context, '/nova_consulta_prof_disp');
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
