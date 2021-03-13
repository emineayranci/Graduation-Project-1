import 'package:flutter/material.dart';
import 'package:flutter_app_son/screens/anasayfa.dart';
import 'package:flutter_app_son/screens/deney_screen.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

import 'screens/auth.dart';
import 'screens/todolistscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LitAuthInit(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: AuthScreen(),
        routes: rotalar,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

Map rotalar = <String, WidgetBuilder>{
  "/anasayfa": (BuildContext context) => AnaSayfa(),
  "/giris" : (BuildContext context) => AuthScreen(),
  "/yapilacaklar": (BuildContext context) => Yapilacaklar(),
  "/deneyler": (BuildContext context) => Deney(),
};
