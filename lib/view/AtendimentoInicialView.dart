import 'dart:io';
import '../res/Colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AtendimentoInicialView extends StatelessWidget {
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
              padding: const EdgeInsets.only(top: 40.0),
              child: Container(
                color:Colors.white,
                width: width,
                height: 48.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    Text(
                      "Formulário de Atendimento",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 20.0),
                    ),
                  ],)
                  ),
                )
            ),

            Padding(
              padding: const EdgeInsets.only(top: 90.0, bottom: 40.0),
              child:
              Container(
                height: height * 0.4,
                color: colorLightBlueGreyTwo,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset('assets/drawable-xhdpi/illustration-novo-formulario.png')
                          ),
                        ])
                    ]),


                // child: Align(
                //     alignment: Alignment.bottomCenter,
                //     child: Image.asset('assets/drawable-xhdpi/illustration-novo-formulario.png')),
              ),
            ),
            
            Positioned(
              top: height * 0.8 - 91,
              child: Container(
                  width: width - 72,
                  height: height * 0.5,
                  decoration: BoxDecoration(
                    color: const Color(0xffdaf5ee),
                    image: DecorationImage(
                      image: AssetImage('assets/drawable-xhdpi/Flores-fundo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Text(
                            "Responda as perguntas e seja",
                            style: const TextStyle(
                              color:  const Color(0xff3b4d57),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.0
                            )
                          ),
                      ],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Text(
                            "direcionado para a unidade de",
                            style: const TextStyle(
                              color:  const Color(0xff3b4d57),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.0
                            )
                          ),
                      ],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Text(
                            "atendimento mais adequada",
                            style: const TextStyle(
                              color:  const Color(0xff3b4d57),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.0
                            )
                          ),
                      ],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Text(
                            "para suas necessidades",
                            style: const TextStyle(
                              color:  const Color(0xff3b4d57),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.0
                            )
                          ),
                      ],),
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Align( 
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RaisedButton(
                                color: colorMutedBlue,
                                onPressed: () {},
                                child: Center(
                                  child: Text(
                                    "Começar",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                          ]),
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
