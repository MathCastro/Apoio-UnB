import 'package:apoio_unb/res/Colors.dart';
import 'package:flutter/material.dart';

class RegistrarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 4,
                          child: Container(
                          width: width - 72,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: MyCustomForm(),
                          ),
                        ),
                      ),
                    ),
                  ),
        ));
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text("Registrar",
                  style: TextStyle(
                      color: colorMutedBlue,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 20,
              right: 20,
            ),
            child: Text("Nome Completo:",
                style: TextStyle(
                    color: colorMutedBlue,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0)),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 4),
            child: Container(
              height: 35,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: colorMutedBlue,
                      style: BorderStyle.solid,
                      width: 0.8),
                )),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter some text';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 20,
              right: 20,
            ),
            child: Text("E-mail:",
                style: TextStyle(
                    color: colorMutedBlue,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0)),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 4),
            child: Container(
              height: 35,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: colorMutedBlue,
                      style: BorderStyle.solid,
                      width: 0.8),
                )),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter some text';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 20,
              right: 20,
            ),
            child: Text("Matrícula:",
                style: TextStyle(
                    color: colorMutedBlue,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0)),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 4),
            child: Container(
              height: 35,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: colorMutedBlue,
                      style: BorderStyle.solid,
                      width: 0.8),
                )),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter some text';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 20,
              right: 20,
            ),
            child: Text("Telefone:",
                style: TextStyle(
                    color: colorMutedBlue,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0)),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 4),
            child: Container(
              height: 35,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: colorMutedBlue,
                      style: BorderStyle.solid,
                      width: 0.8),
                )),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter some text';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 20,
              right: 20,
            ),
            child: Text("Senha:",
                style: TextStyle(
                    color: colorMutedBlue,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0)),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 4),
            child: Container(
              height: 35,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: colorMutedBlue,
                      style: BorderStyle.solid,
                      width: 0.8),
                )),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter some text';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
            child: Text("Confirmar senha:",
                style: TextStyle(
                    color: colorMutedBlue,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0)),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 4),
            child: Container(
              height: 35,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: colorMutedBlue,
                      style: BorderStyle.solid,
                      width: 0.8),
                )),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter some text';
                  }
                  return null;
                },
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 4),
              child: SizedBox(
                width: width - 72 - 56,
                child: OutlineButton(
                  borderSide: BorderSide(
                    color: colorMutedBlue, //Color of the border
                    style: BorderStyle.solid, //Style of the border
                    width: 0.8, //width of the border
                  ),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '/registrar');
                  },
                  child: Center(
                    child: Text(
                      "Registrar",
                      style: TextStyle(color: colorMutedBlue),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
