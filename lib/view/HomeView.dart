import 'package:apoio_unb/res/Colors.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _cIndex = 0;

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: height,
            color: colorLightBlueGreyTwo,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/drawable-xhdpi/Flores-fundo.png'),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Card(
                        child: Center(
                          child: Container(
                            height: 150,
                            width: 110,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  height: 55,
                                  child: Image.asset(
                                      'assets/drawable-xhdpi/notepad.png'),
                                ),
                                Center(
                                  child: Text(
                                    "Novo",
                                    style: const TextStyle(
                                        color: const Color(0xff3b4d57),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Roboto",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14.0),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "Atendimento",
                                    style: const TextStyle(
                                        color: const Color(0xff3b4d57),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Roboto",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/nova_consulta_unid_atend');
                      },
                      child: Card(
                        child: Center(
                          child: Container(
                            height: 150,
                            width: 110,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  height: 55,
                                  child: Image.asset(
                                      'assets/drawable-xhdpi/010-calendar-2.png'),
                                ),
                                Center(
                                  child: Text(
                                    "Nova",
                                    style: const TextStyle(
                                        color: const Color(0xff3b4d57),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Roboto",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14.0),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "Consulta",
                                    style: const TextStyle(
                                        color: const Color(0xff3b4d57),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Roboto",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      child: Center(
                        child: Container(
                          height: 150,
                          width: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 55,
                                child: Image.asset(
                                    'assets/drawable-xhdpi/calendar.png'),
                              ),
                              Center(
                                child: Text(
                                  "Minha",
                                  style: const TextStyle(
                                      color: const Color(0xff3b4d57),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.0),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "Agenda",
                                  style: const TextStyle(
                                      color: const Color(0xff3b4d57),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Center(
                        child: Container(
                          height: 150,
                          width: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 55,
                                child: Image.asset(
                                    'assets/drawable-xhdpi/009-map-1.png'),
                              ),
                              Center(
                                child: Text(
                                  "Pesquisar",
                                  style: const TextStyle(
                                      color: const Color(0xff3b4d57),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.0),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "Unidades",
                                  style: const TextStyle(
                                      color: const Color(0xff3b4d57),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _cIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,
                  color: _cIndex != 0
                      ? Color.fromARGB(255, 0, 0, 0)
                      : Colors.blueAccent),
              title: new Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today,
                  color: _cIndex != 1
                      ? Color.fromARGB(255, 0, 0, 0)
                      : Colors.blueAccent),
              title: new Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin,
                  color: _cIndex != 2
                      ? Color.fromARGB(255, 0, 0, 0)
                      : Colors.blueAccent),
              title: new Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,
                  color: _cIndex != 3
                      ? Color.fromARGB(255, 0, 0, 0)
                      : Colors.blueAccent),
              title: new Text(''))
        ],
        onTap: (index) {
          _incrementTab(index);
        },
      ),
    );
  }
}
