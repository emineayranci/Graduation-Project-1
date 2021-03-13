import 'package:flutter/material.dart';
import 'package:flutter_app_son/screens/anasayfa.dart';

class YanMenu extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Emine Ayrancı"),
              accountEmail: Text("emine.ayranci@stu.fsm.edu.tr"),
              decoration: BoxDecoration(
                color: Color(0xff8908d9),
              ),
              currentAccountPicture: Icon(
                Icons.account_circle,
                size: 70,
              ),
            ),
            ListTile(
              leading: Icon(Icons.people_outline),
              title: Text('Hesabım'),
            ),
            ListTile(
              leading: Icon(Icons.stars),
              title: Text('Yapılacaklar'),
              onTap: () => {
                Navigator.pushNamed(context, "/yapilacaklar")
              },
            ),
            ListTile(
              leading: Icon(Icons.broken_image),
              title: Text('Tüm Deneyler'),
              onTap: () => {
                Navigator.pushNamed(context, "/deneyler")
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Çıkış Yap'),
              onTap: () => {
                Navigator.pushNamed(context, "/giris")
              },
            ),
          ],
        ),
      ),
    );
  }
}
