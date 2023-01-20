import 'package:flutter/material.dart';
import 'package:todo_app/utils/colors.dart';

import '../home.dart';

class DevLoginPage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DevLoginPage> {


  TextEditingController idController;
  TextEditingController passwordController;

  String id;
  String pass;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


        Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              Text(
                "Yetkili Girişi",
                style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),



            ],
          ),
        ),Padding(padding: EdgeInsets.only(left: 180, top:60, right: 180),
          child: TextField(controller: idController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: " id",
                  hintStyle: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.white),
                      borderRadius:
                      BorderRadius.all(Radius.circular(16))),
                  contentPadding: EdgeInsets.all(16),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.white),
                      borderRadius:
                      BorderRadius.all(Radius.circular(16))),
                  prefixIcon: Icon(Icons.search_outlined, color:Colors.white)),

              ),
        ),
        Padding(padding: EdgeInsets.only(left: 180, top:60, right: 180),
          child: TextField(controller: passwordController,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                hintText: " password",
                hintStyle: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.white),
                    borderRadius:
                    BorderRadius.all(Radius.circular(16))),
                contentPadding: EdgeInsets.all(16),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.white),
                    borderRadius:
                    BorderRadius.all(Radius.circular(16))),
                prefixIcon: Icon(Icons.search_outlined, color:Colors.white)),

          ),
        ),
 Padding(padding: EdgeInsets.only(left: 180, top:60, right: 180) ,child:     Row(
   mainAxisAlignment: MainAxisAlignment.spaceAround,
   children: [
     IconButton(tooltip: "Yetkili Seçeneklerini Aç" ,icon: Icon(Icons.add_task, size:50 ), color:white,
       onPressed:(){
         if_Dev=true;
       Navigator.push(context,
           MaterialPageRoute(builder: (context) => MyHomePage()));
       } , ),
     IconButton(tooltip: "Yetkili Seceneklerini Kapat" ,icon: Icon(Icons.cancel_outlined, size:50 ), color:white,

       onPressed:(){
         if_Dev=false;
         Navigator.push(context,
             MaterialPageRoute(builder: (context) => MyHomePage()));
       } , ),
   ],
 ),)
      ],),
    );
  }
}

