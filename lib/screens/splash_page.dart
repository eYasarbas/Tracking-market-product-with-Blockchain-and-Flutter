import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/screens/create_urun.dart';
import 'package:todo_app/utils/colors.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.blueGrey,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 10,
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24.0, top: 12.0, bottom: 4.0),
                    child: Text(
                      "Tez",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.cyanAccent,
                          fontWeight: FontWeight.w500),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24.0, top: 4.0, bottom: 12.0),
                    child: Text(
                      "Ürün Listesi Yükleniyor\n  Lütfen Bekleyiniz...",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 44,
                          color: white,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24.0, top: 8, right: 24),
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        //padding: EdgeInsets.all(16),
                        //color: wood_smoke,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateUrun()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,),
                        //textColor: white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "İLK KURULUMU BAŞLAT",
                              style: TextStyle(
                                  fontSize: 21.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        //shape: RoundedRectangleBorder(
                         //   borderRadius: new BorderRadius.circular(16.0)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
