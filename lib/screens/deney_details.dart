import 'package:flutter/material.dart';
import 'package:flutter_app_son/config/palette.dart';
import 'package:flutter_app_son/data/deneyler.dart';

class DetailPage extends StatelessWidget {
  final ExperimentInfo expInfo;

  const DetailPage({Key key, this.expInfo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                height: 800,
                color: expInfo.color,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 250,
                          ),
                          Text(
                            expInfo.name,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 56,
                              color: const Color(0xff47455f),
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          SizedBox(height: 25),
                          Text(
                            expInfo.description ?? '',
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 30),
                          Divider(
                            color: Colors.black,
                          ),

                          Container(
                            alignment: Alignment.bottomRight,
                            child: RaisedButton(
                              color: Palette.background,

                              onPressed: () {},
                              child: Text('Deneyi Başlat ->'),


                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: -64,
              child: Image.asset(expInfo.iconImage),
            ),
            Positioned(
              top: 30,
              left: 32,
              child: Text(
                expInfo.position.toString(),
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 247,
                  color: Palette.primaryTextColor.withOpacity(0.3),
                ),
              ),
            ),
            IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed:(){
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
