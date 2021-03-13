import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_son/screens/yanmenu.dart';

import 'package:flutter_app_son/config/palette.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key key}) : super(key: key);

  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planla ve Keşfet"),
        backgroundColor: Palette.purple,
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top:16.0, left: 16.0, right: 16.0),
          child: Image.asset(
            "assets/p9.png",
            width: 300,
          ),
        ),
        Divider(
          color: Palette.purple,
          thickness: 5.0,
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0, bottom:8.0, left: 32.0, right: 32.0),
          child: Text(
              "Planla ve keşfet, Ortaokul öğrencileri için hazırlanmış olup, kanban tekniğiyle öğrencilerin günlerini planlayıp sorumluluk bilincini artırırken çeşitli deneylerle eğlenerek keşfetmesine yardımcı olur.",
          style: TextStyle(
            fontSize: 20,
          ),),
        ),
        Divider(
          color: Palette.purple,
          thickness: 5.0,
        ),
      ]),
      drawer: YanMenu(),
    );
  }
}
