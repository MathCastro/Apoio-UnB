import 'dart:io';
import '../res/Colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HorariosAtendimentoView extends StatelessWidget {
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
                                left: 60.0, bottom: 10.0)),
                        Text(
                          "Horários de atendimento:",
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
                                const EdgeInsets.only(left: 60.0, top: 30.0)
                        ),
                        Icon(Icons.calendar_today, size:12),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0)
                        ),
                        Text(
                          "Segunda:",
                          style: const TextStyle(
                          color:  const Color(0xff666666),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle:  FontStyle.normal,
                          fontSize: 14.0
                        )),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 50.0)
                        ),
                        Icon(Icons.timer, size:12),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0)
                        ),
                        Text(
                          "09h às 18h",
                          style: const TextStyle(
                          color:  const Color(0xff666666),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle:  FontStyle.normal,
                          fontSize: 14.0
                        )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 60.0, top: 30.0)
                        ),
                        Icon(Icons.calendar_today, size:12),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0)
                        ),
                        Text(
                          "Terça:",
                          style: const TextStyle(
                          color:  const Color(0xff666666),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle:  FontStyle.normal,
                          fontSize: 14.0
                        )),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 70.0)
                        ),
                        Icon(Icons.timer, size:12),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0)
                        ),
                        Text(
                          "09h às 14h",
                          style: const TextStyle(
                          color:  const Color(0xff666666),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle:  FontStyle.normal,
                          fontSize: 14.0
                        )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 60.0, top: 30.0)
                        ),
                        Icon(Icons.calendar_today, size:12),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0)
                        ),
                        Text(
                          "Quarta:",
                          style: const TextStyle(
                          color:  const Color(0xff666666),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle:  FontStyle.normal,
                          fontSize: 14.0
                        )),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 63.0)
                        ),
                        Icon(Icons.timer, size:12),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0)
                        ),
                        Text(
                          "11h às 18h",
                          style: const TextStyle(
                          color:  const Color(0xff666666),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle:  FontStyle.normal,
                          fontSize: 14.0
                        )),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 60.0, top: 30.0)
                        ),
                        Icon(Icons.calendar_today, size:12),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0)
                        ),
                        Text(
                          "Quinta:",
                          style: const TextStyle(
                          color:  const Color(0xff666666),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle:  FontStyle.normal,
                          fontSize: 14.0
                        )),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 64.0)
                        ),
                        Icon(Icons.timer, size:12),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0)
                        ),
                        Text(
                          "08h às 14h",
                          style: const TextStyle(
                          color:  const Color(0xff666666),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle:  FontStyle.normal,
                          fontSize: 14.0
                        )),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 60.0, top: 30.0)
                        ),
                        Icon(Icons.calendar_today, size:12),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0)
                        ),
                        Text(
                          "Sexta:",
                          style: const TextStyle(
                          color:  const Color(0xff666666),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle:  FontStyle.normal,
                          fontSize: 14.0
                        )),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 70.0)
                        ),
                        Icon(Icons.timer, size:12),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0)
                        ),
                        Text(
                          "08h às 18h",
                          style: const TextStyle(
                          color:  const Color(0xff666666),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle:  FontStyle.normal,
                          fontSize: 14.0
                        )),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: ButtonTheme(
                              minWidth: 230.0,
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
                              minWidth: 230.0,
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
