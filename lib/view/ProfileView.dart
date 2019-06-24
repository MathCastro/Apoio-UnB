import 'dart:io';
import '../res/Colors.dart';

import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
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
              height: height * 0.4,
              color: colorLightBlueGreyTwo,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/drawable-xhdpi/Flores-fundo.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                "Perfil",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 20.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Image.asset(
                'assets/drawable-xhdpi/illustration-perfil.png',
                width: width - 180,
              ),
            ),
            Positioned(
              top: height * 0.7 - 91,
              child: Container(
                  width: width - 72,
                  height: height * 0.5,
                  child: Column(
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
                      Divider(
                        color: const Color(0xffe3e3e3),
                      ),
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
                      Divider(
                        color: const Color(0xffe3e3e3),
                      ),
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
                        )),
                      ),
                      Divider(
                        color: const Color(0xffe3e3e3),
                      ),
                      FlatButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onPressed: () {},
                        child: Text(
                          "Sair",
                          style: const TextStyle(
                            color:  const Color(0xff3b4d57),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle:  FontStyle.normal,
                            fontSize: 16.0
                        )),
                      ),
                      Divider(
                        color: const Color(0xffe3e3e3),
                      ),
                      Row(children: <Widget>[
                        ButtonTheme(
                        minWidth: 20.0,
                        height: 20.0,
                        child:
                          FlatButton(
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            onPressed: (){},
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
                          child:
                          FlatButton(
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            onPressed: (){},
                            child: Image.asset(
                              'assets/drawable-xhdpi/Repetição de grade 17.png',
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
                              'assets/drawable-xhdpi/Icon - Search - Filled.png',
                              width: 20,
                            ),
                          ),
                        ),
                      ],
                      )
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
