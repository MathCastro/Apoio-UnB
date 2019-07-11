import 'dart:io';
import '../res/Colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class PesquisaUnidadeView extends StatefulWidget {
  @override
  _PesquisaUnidadeState createState() => _PesquisaUnidadeState();
}

class _PesquisaUnidadeState extends State<PesquisaUnidadeView> {
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
      body: Container(
        height: height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
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
                        "Pesquisa",
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 75.0, bottom: 0.0),
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
                          RaisedButton(
                            color: Colors.white,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.search),
                                Padding(
                                    padding:
                                        const EdgeInsets.only(right: 10.0)),
                                Text(
                                  "Pesquisar unidades de atendimento",
                                  style: const TextStyle(
                                      color: Color(0x99000000),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.0),
                                ),
                              ],
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
                                top: 20.0, left: 40.0, bottom: 30.0)),
                        Text(
                          "Unidade de atendimento",
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
                        Padding(padding: const EdgeInsets.only(bottom: 0.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 40.0, bottom: 30.0)),
                            Card(
                              shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                              child: InkWell(
                                splashColor: Colors.blue.withAlpha(30),
                                onTap: () {Navigator.pushNamed(context, '/info_unidade');},
                                child: Container(
                                    width: width * 0.8,
                                    height: height * 0.1,
                                    decoration: const BoxDecoration(
                                      
                                    border: Border(
                                      left: BorderSide(width: 8.0, color: Color(0xff03dac6)),
                                    ),
                                  ),
                                    child: Row(
                                      children: <Widget>[
                                        /////////////////////////// FIX-ME /////////////////
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(right: 8.0),
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
                                                    "Nepasd\n",
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xff33849b),
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontFamily: "Roboto",
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize: 12.0),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                        "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.",
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
                                                  ]),
                                            ]),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20.0)),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 15.0)),
                                                  Icon(
                                                      Icons.add_circle_outline),
                                                ],
                                              )
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
                                    top: 20.0, left: 40.0, bottom: 30.0)),
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
                                    decoration: const BoxDecoration(
                                    border: Border(
                                      left: BorderSide(width: 8.0, color: Color(0xff03dac6)),
                                    ),
                                  ),
                                    child: Row(
                                      children: <Widget>[
                                        /////////////////////////// FIX-ME /////////////////
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(right: 8.0),
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
                                                    "HUB\n",
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xff33849b),
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontFamily: "Roboto",
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize: 12.0),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                        "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.",
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
                                                  ]),
                                            ]),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20.0)),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 15.0)),
                                                  Icon(
                                                      Icons.add_circle_outline),
                                                ],
                                              )
                                            ]),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _cIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,
                  color: _cIndex != 0
                      ? Color.fromARGB(255, 0, 0, 0)
                      : colorMutedBlue),
              title: new Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today,
                  color: _cIndex != 1
                      ? Color.fromARGB(255, 0, 0, 0)
                      : colorMutedBlue),
              title: new Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin,
                  color: _cIndex != 2
                      ? Color.fromARGB(255, 0, 0, 0)
                      : colorMutedBlue),
              title: new Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,
                  color: _cIndex != 3
                      ? Color.fromARGB(255, 0, 0, 0)
                      : colorMutedBlue),
              title: new Text('Unidades', style: 
                            TextStyle(
                              color: colorMutedBlue,
                        ),)),
        ],
        onTap: (index) {
          _incrementTab(index);
          if(index == 0){
            Navigator.pushNamed(context, '/home');
          }
          else if(index == 2){
            Navigator.pushNamed(context, '/perfil');
          }
        },
      ),
    );
  }
}
