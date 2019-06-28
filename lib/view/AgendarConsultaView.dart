import 'package:apoio_unb/controller/ConsultaController.dart';
import 'package:apoio_unb/model/Consulta.dart';
import 'package:apoio_unb/res/Colors.dart';
import 'package:flutter/material.dart';

class AngendarConsultaView extends StatefulWidget {
  @override
  _AngendarConsultaViewState createState() => _AngendarConsultaViewState();
}

class _AngendarConsultaViewState extends State<AngendarConsultaView> {
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(
        () {
          Consulta.data = picked;
          selectedDate = picked;
          ConsultaController().registerConsulta();
          Navigator.pushNamed(context, '/consulta_agendada_com_sucesso');
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Agendar Consulta",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Selecione o dia",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 20.0),
              ),
            ),
            Center(
              child: RaisedButton(
                color: colorMutedBlue,
                onPressed: () {
                  _selectDate(context);
                },
                child: Text(
                  'Clique aqui para selecionar a data',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            // Center(
            //   child: RaisedButton(
            //     color: colorMutedBlue,
            //     onPressed: () {
            //       Navigator.pushNamed(
            //           context, '/consulta_agendada_com_sucesso');
            //     },
            //     child: Center(
            //       child: Text(
            //         "Agendar consulta",
            //         style: TextStyle(color: Colors.white),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
