import 'dart:io';
import '../res/Colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class InfoUnidadeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Pesquisa",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            
            Padding(
              padding: const EdgeInsets.only(top: 0.0, bottom: 0.0),
              child: Container(
                height: height - 48,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/drawable-xhdpi/Flores-fundo.png"),
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              'assets/drawable-xhdpi/imagem-info-atendimento.png',
                              scale: 2.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 40.0, bottom: 20.0)),
                        Text(
                          "Nepasd",
                          style: const TextStyle(
                              color: const Color(0xff3b4d57),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 20.0),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, bottom: 0.0)),
                        Text(
                          "(Núcleo de Estudos, Pesquisas e Atendimentos\n em Saúde Mental e Drogas)",
                          style: const TextStyle(
                              color: const Color(0xff3b4d57),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 12.0),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, top: 100.0)),
                        Text(
                          "Acolhimento, atendimento psicológico, \ngrupos de escuta, rodas de conversa e\n orientações. No momento, as atividades \nestão sendo realizadas somente em casos \nemergenciais, com agendamento prévio.",
                          style: const TextStyle(
                              color: const Color(0xff3b4d57),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 14.0),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: ButtonTheme(
                              minWidth: 200.0,
                              child: OutlineButton(
                                borderSide: BorderSide(
                                  color: colorMutedBlue, //Color of the border
                                  style:
                                      BorderStyle.solid, //Style of the border
                                  width: 0.8, //width of the border
                                ),
                                color: Colors.white,
                                onPressed: () {
                                  // Navigator.pushNamed(context, '/registrar');
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
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: ButtonTheme(
                              minWidth: 200.0,
                              child: OutlineButton(
                                borderSide: BorderSide(
                                  color: colorMutedBlue, //Color of the border
                                  style:
                                      BorderStyle.solid, //Style of the border
                                  width: 0.8, //width of the border
                                ),
                                color: Colors.white,
                                onPressed: () {
                                  // Navigator.pushNamed(context, '/registrar');
                                },
                                child: Center(
                                  child: Text(
                                    "Ver no mapa",
                                    style: TextStyle(color: colorMutedBlue),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: ButtonTheme(
                              minWidth: 200.0,
                              child: RaisedButton(
                                color: colorMutedBlue,
                                onPressed: () {
                                  // Navigator.pushNamed(context, '/login');
                                },
                                child: Center(
                                  child: Text(
                                    "Horários de atendimento",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
