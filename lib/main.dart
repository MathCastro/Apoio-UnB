import 'package:apoio_unb/res/Colors.dart';
import 'package:apoio_unb/view/AgendarConsultaView.dart';
import 'package:apoio_unb/view/ConsultaAgendadaComSucessoView.dart';
import 'package:apoio_unb/view/GoogleMapView.dart';
import 'package:apoio_unb/view/NovaConsultaAreaAtuacaoView.dart';
import 'package:apoio_unb/view/NovaConsultaProfDispView.dart';
import 'package:apoio_unb/view/NovaConsultaUnidAtendView.dart';
import 'package:apoio_unb/view/HomeView.dart';
import 'package:apoio_unb/view/Pesquisa1View.dart';
import 'package:apoio_unb/view/Pesquisa2View.dart';
import 'package:apoio_unb/view/Pesquisa3View.dart';
import 'package:apoio_unb/view/Pesquisa4View.dart';
import 'package:apoio_unb/view/RespondeuQuestioarioView.dart';
import 'package:flutter/material.dart';
import 'view/LoginView.dart';
import 'view/FirstView.dart';
import 'view/RegistrarView.dart';
import 'view/ProfileView.dart';
import 'view/AtendimentoInicialView.dart';
import 'view/InfoUnidadeView.dart';
import 'view/PesquisaUnidadeView.dart';
import 'view/InfoPesquisaView.dart';
import 'view/HorariosAtendimentoView.dart';
import 'view/HistoricoAtendimentoView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        brightness: Brightness.light,
        primaryColor: colorAquamarine,
        accentColor: colorMutedBlue,
        splashColor: colorMutedBlue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FirstView(),
        '/login': (context) => LoginView(),
        '/registrar': (context) => RegistrarView(),
        '/perfil' : (context) => ProfileView(),
        '/formulario_inicial' : (context) => AtendimentoInicialView(),
        '/nova_consulta_unid_atend' : (context) => NovaConsultaUnidAtendView(),
        '/nova_consulta_area_atuacao' : (context) => NovaConsultaAreaAtuacaoView(),
        '/nova_consulta_prof_disp' : (context) => NovaConsultaProfDispView(),
        '/consulta_agendada_com_sucesso' : (context) => ConsultaAgendadaComSucessoView(),
        '/home': (context) => HomeView(),
        '/agendar_consulta': (context) => AngendarConsultaView(),
        '/pesquisar_unidade': (context) => PesquisaUnidadeView(),
        '/info_unidade': (context) => InfoUnidadeView(),
        '/pesquisa1': (context) => Pesquisa1View(),
        '/pesquisa2': (context) => Pesquisa2View(),
        '/pesquisa3': (context) => Pesquisa3View(),
        '/pesquisa4': (context) => Pesquisa4View(),
        '/resp_questionario': (context) => RespondeuQuestionarioView(),
        '/info_pesquisa': (context) => InfoPesquisaView(),
        '/horarios_atendimento': (context) => HorariosAtendimentoView(),
        '/historico_atendimento': (context) => HistoricoAtendimentoView(),
        '/google_maps': (context) => GoogleMapView(),
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
