import 'package:flutter/material.dart';
import 'package:flutter_app_son/config/palette.dart';
import 'package:flutter_app_son/data/todolist.dart';

class Yapilacaklar extends StatefulWidget {
  const Yapilacaklar({Key key}) : super(key: key);

  _YapilacaklarState createState() => _YapilacaklarState();
}

class _YapilacaklarState extends State<Yapilacaklar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.purple,
        title: Text("Yapılacaklar",
            style: TextStyle(fontSize: 24)),
      ),
      body:ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            items[index].startColor,
                            items[index].endColor
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 12,
                              color: items[index].endColor,
                              offset: Offset(0, 6))
                        ]),
                  ),
                  Positioned.fill(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Image.asset(
                            items[index].image,
                            height: 64,
                            width: 64,
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                items[index].yapilacak,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                items[index].aciklama,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                items[index].tarih.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Checkbox(
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            value: items[index].yapildiMi,
                            onChanged: (va) {
                              setState(() {
                                items[index].yapildiMi = va;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("ekle"),
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 97, 5, 153),
        hoverColor: Color.fromARGB(0, 97, 5, 153),
      ),
    );
  }
}



