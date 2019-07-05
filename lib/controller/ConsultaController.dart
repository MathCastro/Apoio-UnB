import 'package:apoio_unb/model/Consulta.dart';
import 'package:apoio_unb/model/ConsultaBO.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import 'auth/AuthController.dart';

class ConsultaController {
  final reference = FirebaseDatabase.instance.reference();

  void registerConsulta() async {
    String id = await AuthController().getCurrentUser();
    final consultaReference =
        FirebaseDatabase.instance.reference().child("consulta").child(id).push();

    var newConsulta = <String, dynamic>{
      'area': Consulta.area,
      'data': Consulta.data.toString(),
      'profissional': Consulta.profissional,
      'unidade': Consulta.unidade,
    };
    consultaReference.set(newConsulta);
  }

  Future<List<ConsultaBO>> getConsulta() async {
    List<ConsultaBO> listOfConsulta = [];
    Map<dynamic, dynamic> maps;
    String id = await AuthController().getCurrentUser();
    await FirebaseDatabase.instance.reference().child('consulta').child(id).once().then(
      (DataSnapshot snapshot) {
        maps = snapshot.value;
        // print('Data : ${snapshot.value.values}');
      },
    );

    if (maps != null) {
      maps.forEach((k, v) {
          listOfConsulta.add(
            ConsultaBO(
                area: v["area"],
                data: v["data"],
                id: k,
                profissional: v["profissional"],
                unidade: v["unidade"]),
          );
      });
    }
    return listOfConsulta;
  }
}
