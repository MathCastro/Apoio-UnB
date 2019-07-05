import 'package:apoio_unb/controller/auth/AuthController.dart';
import 'package:apoio_unb/model/User.dart';
import 'package:apoio_unb/res/Colors.dart';
import 'package:flutter/material.dart';

class Pesquisa2View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
          title: Text(
            "Formulário de Atendimento",
            style: TextStyle(color: Colors.black),
          ),
        ),
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
                    child: SliderForm(),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

// Create a Form widget.
class SliderForm extends StatefulWidget {
  @override
  SliderFormState createState() {
    return SliderFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class SliderFormState extends State<SliderForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<SliderFormState>.
  final _formKey = GlobalKey<FormState>();
  User _user = User();
  double _value1 = 0;
  double _value2 = 0;
  double _value3 = 0;
  double _value4 = 0;
  double _value5 = 0;
  void _setvalue1(double value) => setState(() => _value1 = value);
  void _setvalue2(double value) => setState(() => _value2 = value);
  void _setvalue3(double value) => setState(() => _value3 = value);
  void _setvalue4(double value) => setState(() => _value4 = value);
  void _setvalue5(double value) => setState(() => _value5 = value);

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    left: 20,
                    right: 20,
                  ),
                  child: Text("1.",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          color: const Color(0xff3b4d57),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0))),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 20,
                ),
                child: Text(
                    "Nas últimas duas semanas, quantas vezes você sentiu incomodo por se sentir deprimido, irritado ou sem esperança?",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: const Color(0x99000000),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 3,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "0",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "1",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "2",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "3",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "4",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "Todos os dias",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                )
                              ]),
                        ),
                        Slider(
                          min: 0,
                          max: 7,
                          divisions: 7,
                          label: _value1.toString(),
                          value: _value1,
                          onChanged: _setvalue1,
                          activeColor: colorAquamarine,
                        )
                      ],
                    )),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    left: 20,
                    right: 20,
                  ),
                  child: Text("2.",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          color: const Color(0xff3b4d57),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0))),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 20,
                ),
                child: Text(
                    "Nas últimas duas semanas, quantas vezes você sentiu incomodo por se sentir deprimido, irritado ou sem esperança?",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: const Color(0x99000000),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 3,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "0",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "1",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "2",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "3",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "4",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "Todos os dias",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                )
                              ]),
                        ),
                        Slider(
                          min: 0,
                          max: 7,
                          divisions: 7,
                          label: _value2.toString(),
                          value: _value2,
                          onChanged: _setvalue2,
                          activeColor: colorAquamarine,
                        )
                      ],
                    )),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    left: 20,
                    right: 20,
                  ),
                  child: Text("3.",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          color: const Color(0xff3b4d57),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0))),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 20,
                ),
                child: Text(
                    "Nas últimas duas semanas, quantas vezes você sentiu incomodo por se sentir deprimido, irritado ou sem esperança?",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: const Color(0x99000000),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 3,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "0",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "1",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "2",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "3",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "4",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "Todos os dias",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                )
                              ]),
                        ),
                        Slider(
                          min: 0,
                          max: 7,
                          divisions: 7,
                          label: _value3.toString(),
                          value: _value3,
                          onChanged: _setvalue3,
                          activeColor: colorAquamarine,
                        )
                      ],
                    )),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    left: 20,
                    right: 20,
                  ),
                  child: Text("4.",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          color: const Color(0xff3b4d57),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0))),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 20,
                ),
                child: Text(
                    "Nas últimas duas semanas, quantas vezes você sentiu incomodo por se sentir deprimido, irritado ou sem esperança?",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: const Color(0x99000000),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 3,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "0",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "1",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "2",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "3",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "4",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "Todos os dias",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                )
                              ]),
                        ),
                        Slider(
                          min: 0,
                          max: 7,
                          divisions: 7,
                          label: _value4.toString(),
                          value: _value4,
                          onChanged: _setvalue4,
                          activeColor: colorAquamarine,
                        )
                      ],
                    )),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    left: 20,
                    right: 20,
                  ),
                  child: Text("5.",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          color: const Color(0xff3b4d57),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0))),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 20,
                ),
                child: Text(
                    "Nas últimas duas semanas, quantas vezes você sentiu incomodo por se sentir deprimido, irritado ou sem esperança?",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: const Color(0x99000000),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 3,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "0",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "1",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "2",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "3",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "4",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                ),
                                Text(
                                  "Todos os dias",
                                  style: const TextStyle(
                                      color: const Color(0xffced4d9),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                )
                              ]),
                        ),
                        Slider(
                          min: 0,
                          max: 7,
                          divisions: 7,
                          label: _value5.toString(),
                          value: _value5,
                          onChanged: _setvalue5,
                          activeColor: colorAquamarine,
                        )
                      ],
                    )),
              )
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 20, right: 20, bottom: 4),
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
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      // If the form is valid, we want to show a Snackbar
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));

                      AuthController().registerUser(_user);
                      Navigator.pushNamed(context, '/pesquisa3');

                      print('Printing the login data.');
                      print('User: ${_user.toString()}');
                    }
                  },
                  child: Center(
                    child: Text(
                      "Próximo",
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
