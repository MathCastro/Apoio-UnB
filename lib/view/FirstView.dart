import 'dart:io';
import '../res/Colors.dart';

import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
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
              height: height * 0.8,
              color: colorLightBlueGreyTwo,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/drawable-xhdpi/Flores-fundo.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                "Agende e facilite seu atendimento com o Apoio UnB!",
                style: TextStyle(
                    color: colorMutedBlue,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 20.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Image.asset(
                'assets/drawable-xhdpi/logo-apoio-unb.png',
                width: width - 144,
              ),
            ),
            Positioned(
              top: height * 0.8 - 91,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 4,
                child: Container(
                  width: width - 72,
                  height: 182,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: SizedBox(
                          width: width - 72 - 56,
                          child: RaisedButton(
                            color: colorMutedBlue,
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                          width: width - 72 - 56,
                          child: OutlineButton(
                            borderSide: BorderSide(
                              color: colorMutedBlue, //Color of the border
                              style: BorderStyle.solid, //Style of the border
                              width: 0.8, //width of the border
                            ),
                            color: Colors.white,
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                "Registrar",
                                style: TextStyle(color: colorMutedBlue),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: SizedBox(
                          width: width - 72 - 56,
                          child: FlatButton(
                            onPressed: () {
                              showAlertDialog(context);
                            },
                            child: Center(
                              child: Text(
                                "Termos de Compromisso",
                                style: TextStyle(color: colorMutedBlue),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    // set up the buttons
    Widget backButton = SizedBox(
      width: width - 72 - 56,
      child: Center(
        child: RaisedButton(
          color: colorMutedBlue,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Text(
              "Voltar",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
    AlertDialog alert = AlertDialog(
      title: Text(
        "Termo de compromisso",
        style: TextStyle(
            color: colorMutedBlue,
            fontWeight: FontWeight.w500,
            fontFamily: "Roboto",
            fontStyle: FontStyle.normal,
            fontSize: 20.0),
      ),
      content: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam bibendum ex porttitor aliquam posuere. Ut facilisis cursus dolor quis consequat. Aliquam in justo eu libero vehicula imperdiet. Aliquam quis urna iaculis, hendrerit justo a, maximus tellus. Curabitur vestibulum euismod odio, ac dignissim odio sodales quis. Nam fermentum dictum elit quis rhoncus. Suspendisse gravida nunc augue, ut lobortis neque blandit ac. Sed malesuada semper enim id elementum. Curabitur scelerisque libero ultricies arcu viverra, sit amet blandit libero tempor. Nullam sodales nibh ut sodales tincidunt. Sed ultricies dignissim sem vitae rutrum. Mauris ornare rhoncus ultricies. Aliquam ut maximus mauris. " +
                  "Phasellus ornare risus et dolor lobortis, eget ornare nisl porta. Proin vel diam vel purus placerat ultrices sed eu lacus. Etiam ac justo vitae ante aliquam rutrum ut nec nulla. Morbi egestas dolor Leo, ut blandit dolor maximus in. Suspendisse elementum leo sit amet quam rutrum, a mollis leo varius. In eu faucibus risus. Praesent id massa vel neque maximus efficitur. Curabitur vehicula vel libero sed volutpat. Donec vel turpis eu purus commodo fermentum vitae sed urna. Sed euismod leo vel justo euismod, ut auctor ligula pulvinar." +
                  "Proin nec neque augue. Mauris porta nisi nec metus iaculis consequat non iaculis dolor. Vestibulum placerat id neque at sollicitudin. Nullam maximus placerat leo, vel blandit libero egestas a. Nullam vel augue in purus pellentesque lacinia. Aliquam aliquet venenatis libero cursus sagittis. Nam congue augue eu venenatis faucibus. Vestibulum viverra auctor sapien eu malesuada. Suspendisse eu maximus augue." +
                  "Suspendisse tempor sed nisi quis mattis. Phasellus interdum diam quis ipsum volutpat, a laoreet dolor rhoncus. Integer elementum faucibus orci quis tincidunt. Curabitur a neque eget nisl elementum cursus. Suspendisse non pulvinar nisl. Maecenas lobortis varius sem, ullamcorper fermentum justo tristique quis. Fusce at lorem eget neque accumsan interdum. Morbi non ornare urna, eu viverra justo. Morbi malesuada maximus velit, et posuere arcu aliquam id. Duis dui nulla, malesuada nec imperdiet a, consectetur eget eros. Cras posuere convallis eros sed luctus. Proin aliquam eros non facilisis sodales. Suspendisse rutrum ornare lorem, id accumsan magna efficitur non. Fusce pharetra lobortis felis quis egestas. Mauris bibendum tortor eu nibh dapibus semper. Vestibulum et metus a felis tristique tristique." +
                  "Etiam lobortis, nisi eu vestibulum suscipit, nisl quam elementum augue, pretium eleifend eros dui faucibus elit. Nullam eu nunc venenatis, auctor neque vitae, dapibus lorem. Nunc ultricies ipsum tempor, vehicula massa aliquam, tempor ipsum. Curabitur bibendum finibus mi eu vulputate. Integer tempor, lorem nec ultricies scelerisque, sem tellus consectetur ipsum, quis lacinia est velit at lorem. Vivamus rhoncus eget magna sit amet auctor. Ut interdum justo massa, quis convallis justo porta sit amet. Nulla mattis ex nisi, eu egestas nibh gravida eu. Nullam et urna ut ex dignissim fringilla. Maecenas vehicula et nisl ac hendrerit." +
                  "Integer et risus id augue condimentum sagittis. Phasellus diam ligula, semper quis odio maximus, commodo volutpat turpis. Ut magna ligula, dapibus at mauris fringilla, cursus consequat est. Maecenas turpis dolor, ultrices eu ornare id, luctus nec erat. Nam fermentum ex ut cursus feugiat. Aliquam tempor efficitur consectetur. Sed suscipit faucibus sollicitudin. In hac habitasse platea dictumst. Sed nisl massa, venenatis et tincidunt sit amet, vestibulum at nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean et metus suscipit, faucibus neque non, blandit elit. Etiam quam urna, iaculis eu justo eu, volutpat porta ex. Nulla pharetra mattis purus, nec tempus dolor luctus eget. Sed congue, dolor non eleifend tincidunt, metus justo varius eros, et malesuada velit ipsum non magna." +
                  "Mauris eu commodo ipsum. Nullam lobortis felis libero, feugiat commodo augue gravida non. Nulla dapibus egestas lorem, vel convallis sem pretium vel. Nullam lacinia massa sed ornare ornare. Quisque gravida lacus et sodales varius. Nulla rutrum sapien nec augue mattis tempus. Duis non tristique risus. Fusce vitae tortor id lacus fermentum iaculis lacinia ut urna. Nulla facilisi. Proin sit amet quam et est blandit sodales. Morbi laoreet dignissim leo, quis convallis augue feugiat sit amet. Curabitur bibendum, nunc vel consequat sollicitudin, mauris sapien convallis arcu, et venenatis nibh eros ut odio. Ut hendrerit augue et molestie cursus." +
                  "Curabitur dolor dui, tincidunt a eros fermentum, luctus aliquet dolor. Vestibulum scelerisque diam in interdum pellentesque. Proin blandit, lorem eget vehicula ornare, ipsum ipsum rutrum leo, vitae sollicitudin nisi velit non nibh. Etiam aliquet augue sed metus bibendum dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus ut sagittis ligula. Ut convallis leo in ante auctor, in mattis tortor pellentesque. Curabitur vitae lacinia metus. Mauris enim mauris, elementum ac tristique quis, pretium eu urna. Aenean justo justo, sollicitudin sed nisl non, volutpat lobortis massa. Aliquam mattis nibh et ante luctus iaculis. Phasellus ac fermentum ipsum, sed aliquam dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi tempor maximus quam, sed imperdiet leo. Cras tellus ligula, placerat non porttitor ut, aliquam id nisi." +
                  "Proin vel mauris velit. Vestibulum nec scelerisque erat. Vivamus luctus enim ligula, eget dictum eros luctus et. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus fermentum ipsum dui, ac maximus ex vulputate in. Curabitur euismod suscipit velit sit amet sodales. Nulla pulvinar facilisis pulvinar. Quisque finibus tempor magna egestas tincidunt. Nam volutpat et tellus sed varius. Proin cursus justo elit, non condimentum justo facilisis consequat. Vivamus molestie commodo risus, non feugiat enim semper ac." +
                  "Nulla interdum leo eget facilisis efficitur. Quisque eleifend nibh sit amet lacus vulputate placerat. Phasellus eget sagittis libero, sed ornare quam. Morbi malesuada eros et dui gravida condimentum. Fusce sagittis nisi vel volutpat mollis. Integer vitae ipsum a ligula elementum vulputate. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque efficitur, nibh ac accumsan finibus, justo orci fermentum enim, nec convallis lectus turpis nec justo. Vivamus mi urna, dignissim sit amet justo vitae, eleifend gravida orci. Cras rutrum, magna at semper maximus, felis nisi rutrum ante, nec blandit mauris odio nec nibh.",
              style: const TextStyle(
                  color: const Color(0x99000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto",
                  fontStyle: FontStyle.normal,
                  fontSize: 14.0),
            ),
            backButton
          ],
        ),
      ),
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
