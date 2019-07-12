import 'dart:io';
import '../res/Colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class HistoricoAtendimentoView extends StatefulWidget {
  @override
  _HistoricoAtendimentoState createState() => _HistoricoAtendimentoState();
}

class _HistoricoAtendimentoState extends State<HistoricoAtendimentoView> {
  int _cIndex = 3;

  void _incrementTab(index) {
    setState(
      () {
        _cIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: colorLightBlueGrey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Histórico de Atendimento",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 0.0),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.only(bottom: 0.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 33.0, bottom: 30.0)),
                            Card(
                              shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                              child: InkWell(
                                splashColor: Colors.blue.withAlpha(30),
                                onTap: () {},
                                child: Container(
                                    width: width * 0.8,
                                    height: height * 0.1,
                                    child: Row(
                                      children: <Widget>[
                                        /////////////////////////// FIX-ME /////////////////
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                              ),
                                            ),
                                          ],
                                        ),
                                        /////////////////////////// FIX-ME /////////////////
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Nepasd",
                                                  style: const TextStyle(
                                                  color:  const Color(0xff3b4d57),
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Roboto",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 16.0
                                                )),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5.0)
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                    "26/04/2019 - 13h00",
                                                    style: const TextStyle(
                                                        color: Color(
                                                            0xff33849b),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            "Roboto",
                                                        fontStyle: FontStyle
                                                            .normal,
                                                        fontSize: 12.0)),
                                              ]
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5.0)
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                    "Nome Psiquianalista",
                                                    style: const TextStyle(
                                                        color: Color(
                                                            0xff33849b),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            "Roboto",
                                                        fontStyle: FontStyle
                                                            .normal,
                                                        fontSize: 12.0)),
                                              ]
                                            ),
                                        ]),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.only(bottom: 0.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 33.0, bottom: 30.0)),
                            Card(
                              shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                              child: InkWell(
                                splashColor: Colors.blue.withAlpha(30),
                                onTap: () {},
                                child: Container(
                                    width: width * 0.8,
                                    height: height * 0.1,
                                    child: Row(
                                      children: <Widget>[
                                        /////////////////////////// FIX-ME /////////////////
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                              ),
                                            ),
                                          ],
                                        ),
                                        /////////////////////////// FIX-ME /////////////////
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Nepasd",
                                                  style: const TextStyle(
                                                  color:  const Color(0xff3b4d57),
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Roboto",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 16.0
                                                )),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5.0)
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                    "26/04/2019 - 13h00",
                                                    style: const TextStyle(
                                                        color: Color(
                                                            0xff33849b),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            "Roboto",
                                                        fontStyle: FontStyle
                                                            .normal,
                                                        fontSize: 12.0)),
                                              ]
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5.0)
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                    "Nome Psiquianalista",
                                                    style: const TextStyle(
                                                        color: Color(
                                                            0xff33849b),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            "Roboto",
                                                        fontStyle: FontStyle
                                                            .normal,
                                                        fontSize: 12.0)),
                                              ]
                                            ),
                                        ]),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.only(bottom: 0.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 33.0, bottom: 30.0)),
                            Card(
                              shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                              child: InkWell(
                                splashColor: Colors.blue.withAlpha(30),
                                onTap: () {},
                                child: Container(
                                    width: width * 0.8,
                                    height: height * 0.1,
                                    child: Row(
                                      children: <Widget>[
                                        /////////////////////////// FIX-ME /////////////////
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                              ),
                                            ),
                                          ],
                                        ),
                                        /////////////////////////// FIX-ME /////////////////
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Nepasd",
                                                  style: const TextStyle(
                                                  color:  const Color(0xff3b4d57),
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Roboto",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 16.0
                                                )),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5.0)
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                    "26/04/2019 - 13h00",
                                                    style: const TextStyle(
                                                        color: Color(
                                                            0xff33849b),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            "Roboto",
                                                        fontStyle: FontStyle
                                                            .normal,
                                                        fontSize: 12.0)),
                                              ]
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5.0)
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                    "Nome Psiquianalista",
                                                    style: const TextStyle(
                                                        color: Color(
                                                            0xff33849b),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            "Roboto",
                                                        fontStyle: FontStyle
                                                            .normal,
                                                        fontSize: 12.0)),
                                              ]
                                            ),
                                        ]),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.only(bottom: 0.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 33.0, bottom: 30.0)),
                            Card(
                              shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                              child: InkWell(
                                splashColor: Colors.blue.withAlpha(30),
                                onTap: () {},
                                child: Container(
                                    width: width * 0.8,
                                    height: height * 0.1,
                                    child: Row(
                                      children: <Widget>[
                                        /////////////////////////// FIX-ME /////////////////
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                              ),
                                            ),
                                          ],
                                        ),
                                        /////////////////////////// FIX-ME /////////////////
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Nepasd",
                                                  style: const TextStyle(
                                                  color:  const Color(0xff3b4d57),
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Roboto",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 16.0
                                                )),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5.0)
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                    "26/04/2019 - 13h00",
                                                    style: const TextStyle(
                                                        color: Color(
                                                            0xff33849b),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            "Roboto",
                                                        fontStyle: FontStyle
                                                            .normal,
                                                        fontSize: 12.0)),
                                              ]
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5.0)
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                    "Nome Psiquianalista",
                                                    style: const TextStyle(
                                                        color: Color(
                                                            0xff33849b),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            "Roboto",
                                                        fontStyle: FontStyle
                                                            .normal,
                                                        fontSize: 12.0)),
                                              ]
                                            ),
                                        ]),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.only(bottom: 0.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 33.0, bottom: 30.0)),
                            Card(
                              shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                              child: InkWell(
                                splashColor: Colors.blue.withAlpha(30),
                                onTap: () {},
                                child: Container(
                                    width: width * 0.8,
                                    height: height * 0.1,
                                    child: Row(
                                      children: <Widget>[
                                        /////////////////////////// FIX-ME /////////////////
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                              ),
                                            ),
                                          ],
                                        ),
                                        /////////////////////////// FIX-ME /////////////////
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Nepasd",
                                                  style: const TextStyle(
                                                  color:  const Color(0xff3b4d57),
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Roboto",
                                                  fontStyle:  FontStyle.normal,
                                                  fontSize: 16.0
                                                )),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5.0)
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                    "26/04/2019 - 13h00",
                                                    style: const TextStyle(
                                                        color: Color(
                                                            0xff33849b),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            "Roboto",
                                                        fontStyle: FontStyle
                                                            .normal,
                                                        fontSize: 12.0)),
                                              ]
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5.0)
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                    "Nome Psiquianalista",
                                                    style: const TextStyle(
                                                        color: Color(
                                                            0xff33849b),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            "Roboto",
                                                        fontStyle: FontStyle
                                                            .normal,
                                                        fontSize: 12.0)),
                                              ]
                                            ),
                                        ]),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 70.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: ButtonTheme(
                              minWidth: 230.0,
                              child: RaisedButton(
                                color: colorMutedBlue,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Center(
                                  child: Text(
                                    "Voltar",
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
