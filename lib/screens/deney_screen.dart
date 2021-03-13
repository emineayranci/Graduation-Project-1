import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_app_son/config/palette.dart';
import 'package:flutter_app_son/data/deneyler.dart';
import 'deney_details.dart';

class Deney extends StatefulWidget {
  @override
  _DeneyState createState() => _DeneyState();
}

class _DeneyState extends State<Deney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.appBarColor,
        title: Text('ONLINE DENEYLER',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),

      backgroundColor: Palette.background,
      body: Container(
        /*    decoration: BoxDecoration(   //Burası arka plan renk geçişi için
          gradient: LinearGradient(
              colors: [gradientStartColor,gradientEndColor,contentTextColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
            ,
            stops:[0.3,0.7,1.1],
          ),
        ),*/
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 15.0),
                  alignment: Alignment.center,
                  //padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'DENEYLER',
                    style: TextStyle(
                      color: Palette.appBarColor,
                      fontSize: 33,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Avenir',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(

                height: 480,
                padding: const EdgeInsets.only(left: 32),
                child: Swiper(

                  itemCount: exp.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                      color: Colors.white,
                      activeColor: Palette.appBarColor,
                      // altta bulunan küçük yer belli eden noktalar
                      activeSize: 20,
                      space: 3,
                    ),
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context,PageRouteBuilder(
                          pageBuilder: (context,a,b)=> DetailPage(expInfo: exp[index],),), );
                      },
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Card(
                                elevation: 15,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                color: exp[index].color,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 100,
                                      ),
                                      Text(
                                        exp[index].name,
                                        style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 44,
                                            color: Palette.defaultTextColor,
                                            fontWeight: FontWeight.w900),
                                        textAlign: TextAlign.left,
                                      ),

                                      Row(
                                        children: [
                                          Text(
                                            'Deneyi İncele',
                                            style: TextStyle(
                                                fontFamily: 'Avenir',
                                                fontSize: 18,
                                                color: Palette.defaultTextColor),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Palette.defaultTextColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            // alignment: Alignment.topCenter,
                            child: Image.asset(
                              exp[index].iconImage,
                              width: 300,
                              height: 200,
                              alignment: Alignment(0, -1),
                            ),
                          ), // data.dart kısmına resim eklicem ki ekranda görünsün
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      /*  bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(54.0),
          ),
          color: navigationColor,
        ),
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
            IconButton(icon: Icon(Icons.people_outline), onPressed: () {}),
          ],
        ),
      ),*/
    );
  }
}
