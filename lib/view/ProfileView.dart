import 'dart:io';
import '../res/Colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Perfil",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              height: height * 0.3,
              color: colorLightBlueGreyTwo,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/drawable-xhdpi/Flores-fundo.png')),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset(
                'assets/drawable-xhdpi/illustration-perfil.png',
                width: width - 180,
              ),
            ),
            Positioned(
              top: height * 0.6 - 91,
              child: Container(
                  width: width - 72,
                  height: height * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        FlatButton(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Text(
                            "Alterar informações pessoais",
                            style: const TextStyle(
                              color:  const Color(0xff3b4d57),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.0
                            )
                          )
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],),
                      Divider(
                        color: const Color(0xffe3e3e3),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        FlatButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onPressed: () {},
                          child: Text(
                            "Minhas consultas agendadas",
                            style: const TextStyle(
                              color:  const Color(0xff3b4d57),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.0
                          )),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],),
                      Divider(
                        color: const Color(0xffe3e3e3),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        FlatButton(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          onPressed: () {},
                          child: Text(
                            "Histórico de atendimento",
                            style: const TextStyle(
                              color:  const Color(0xff3b4d57),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.0
                            )
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],),
                      Divider(
                        color: const Color(0xffe3e3e3),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        FlatButton(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          onPressed: () {Navigator.pushNamed(context, '/');},
                          child: Text(
                            "Sair",
                            style: const TextStyle(
                              color:  const Color(0xff3b4d57),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.0
                            )
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Divider(
                          color: const Color(0xffe3e3e3),
                        ),
                      ),
                      Align( 
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          ButtonTheme(
                          minWidth: 20.0,
                          height: 20.0,
                          child:
                            FlatButton(
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              onPressed: (){Navigator.pushNamed(context, '/home');},
                              child: Image.asset(
                                'assets/drawable-xhdpi/noun_home.png',
                                width: 20,
                              ),
                            ),
                          ),
                          ButtonTheme(
                          minWidth: 20.0,
                          height: 20.0,
                          child:
                            FlatButton(
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              onPressed: (){},
                              child: Image.asset(
                                'assets/drawable-xhdpi/Icon - Event - Filled.png',
                                width: 20,
                              ),
                            ),
                          ),
                          ButtonTheme(
                            minWidth: 20.0,
                            height: 20.0,
                            child: FlatButton(
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              onPressed: (){},
                              child: Column(children: <Widget>[
                                Image.asset(
                                  'assets/drawable-xhdpi/Repetição de grade 17.png',
                                  width: 20,
                                ), 
                                Text(
                                  "Perfil",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color:  Color(0xff03dac6),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 12.0
                                  )
                                ),
                              ],)
                            ),
                          ),
                          ButtonTheme(
                            minWidth: 20.0,
                            height: 20.0,
                            child:
                            FlatButton(
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              onPressed: (){Navigator.pushNamed(context, '/pesquisar_unidade');},
                              child: Image.asset(
                                'assets/drawable-xhdpi/Icon - Search - Filled.png',
                                width: 20,
                              ),
                            ),
                          ),
                        ]),
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
