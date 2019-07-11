import 'dart:io';
import '../res/Colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class InfoPesquisaView extends StatelessWidget {
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
            
            Padding(
              padding: const EdgeInsets.only(top: 24.0, bottom: 0.0),
              child: Container(
                height: height - 24,
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
                      padding: const EdgeInsets.only(top: 0.0, bottom: 30.0),
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
                                left: 40.0, bottom: 5.0)),
                        Text(
                          "Informações",
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
                                const EdgeInsets.only(left: 40.0, top: 30.0)
                        ),
                        RichText(
                          text: new TextSpan(
                            children: [
                              new TextSpan(
                                style: const TextStyle(
                            color:  const Color(0xff666666),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 14.0
                          ),
                                text: "E-mail: "),
                              new TextSpan(
                                style: const TextStyle(
                            color:  const Color(0xff666666),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 14.0
                          ),
                                text: " nepasdunb@gmail.com")
                            ]
                          )
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, top: 0.0)
                        ),
                        RichText(
                          text: new TextSpan(
                            children: [
                              new TextSpan(
                                style: const TextStyle(
                            color:  const Color(0xff666666),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 14.0
                          ),
                                text: "Endereço: "),
                              new TextSpan(
                                style: const TextStyle(
                            color:  const Color(0xff666666),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 14.0
                          ),
                              text: "Em frente à Fundação Oswaldo\n Cruz (Fiocruz) e ao Centro de\nExcelência em Turismo (CET), \nno prédio do Caep \nCampus Darcy Ribeiro ")
                            ]
                          )
                        ),
                      ]
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, top: 30.0)
                        ),
                        RichText(
                          text: new TextSpan(
                            children: [
                              new TextSpan(
                                style: const TextStyle(
                            color:  const Color(0xff666666),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 14.0
                          ),
                                text: "Telefone: "),
                              new TextSpan(
                                style: const TextStyle(
                            color:  const Color(0xff666666),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 14.0
                          ),
                                text: " (61) 3107 1679")
                            ]
                          )
                        ),
                      ]
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
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
                                  Navigator.pop(context);
                                },
                                child: Center(
                                  child: Text(
                                    "Voltar",
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
                                  Navigator.pushNamed(context, '/agendar_consulta');
                                },
                                child: Center(
                                  child: Text(
                                    "Agendar consulta",
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
