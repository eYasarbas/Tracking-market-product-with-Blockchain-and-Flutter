import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/custom_widgets/button_plain.dart';
import 'package:todo_app/linking/contract_linking.dart';
import 'package:todo_app/utils/colors.dart';

class EditUrun extends StatelessWidget {
  final Product urun;

  EditUrun({this.urun});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController =TextEditingController(text: urun.productTitle);
    TextEditingController descriptionController =TextEditingController(text: urun.productDescription);      // burada paranez iclerindeki bilgiler sayfa açılırken
    TextEditingController fabrikaFiyatController =TextEditingController(text: urun.fabrikaFiyat);                      // onceki kaydı yuklemek icin yani sart degil
    TextEditingController toptanciFiyatController = TextEditingController(text: urun.toptanciData);                     // bir problem cıkarırsa kaldırabilirsin
    TextEditingController kargoFiyatController = TextEditingController(text: urun.kargoData);
    TextEditingController marketFiyatController = TextEditingController(text: urun.marketData);
    TextEditingController gecmisFiyatController = TextEditingController(text: urun.gecmisData);


    var contractLinking = Provider.of<ContractLinking>(context);

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 5,
                child: ListView(
                  padding: EdgeInsets.all(34),
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Ürün Bilgilerini Değiştir",
                        style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextField(
                      controller: titleController,

                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(

                          hintStyle: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: white),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(16))),
                          contentPadding: EdgeInsets.all(16),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(16))),
                          prefixIcon: Icon(Icons.title, color:Colors.white)),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextField(
                      controller: descriptionController,

                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(

                            hintStyle: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                                color: white),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 2, color: white),
                                borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                            contentPadding: EdgeInsets.all(16),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 2, color: white),
                                borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                            prefixIcon: Icon(Icons.title, color:Colors.white)),
                    ),
                    TextField(
                      controller: fabrikaFiyatController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(

                          hintStyle: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: white),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(16))),
                          contentPadding: EdgeInsets.all(16),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(16))),
                          prefixIcon: Icon(Icons.title, color:Colors.white)),
                    ),
                    TextField(
                      controller: toptanciFiyatController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(

                          hintStyle: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: white),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(16))),
                          contentPadding: EdgeInsets.all(16),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(16))),
                          prefixIcon: Icon(Icons.title, color:Colors.white)),
                    ),
                    TextField(
                      controller: kargoFiyatController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(

                          hintStyle: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: white),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(16))),
                          contentPadding: EdgeInsets.all(16),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(16))),
                          prefixIcon: Icon(Icons.title, color:Colors.white)),
                    ),
                    TextField(
                      controller: marketFiyatController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(

                          hintStyle: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: white),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(16))),
                          contentPadding: EdgeInsets.all(16),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(16))),
                          prefixIcon: Icon(Icons.title, color:Colors.white)),
                    ),
                    TextField(
                      controller: gecmisFiyatController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(

                          hintStyle: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: white),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(16))),
                          contentPadding: EdgeInsets.all(16),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: white),
                              borderRadius:
                              BorderRadius.all(Radius.circular(16))),
                          prefixIcon: Icon(Icons.title, color:Colors.white)),
                    ),


                    SizedBox(
                      height: 40,
                    ),
                    ButtonPlainWithShadow(
                      text: "Değişiklikleri Kaydet",
                      shadowColor: wood_smoke,
                      borderColor: wood_smoke,
                      callback: () {
                        if(titleController.text.length>0&&descriptionController.text.length>0&&fabrikaFiyatController.text.length>0&&toptanciFiyatController.text.length>0&&kargoFiyatController.text.length>0&&marketFiyatController.text.length>0&&gecmisFiyatController.text.length>0){

                        contractLinking.updateProduct(urun.id,
                            titleController.text, descriptionController.text, fabrikaFiyatController.text, toptanciFiyatController.text, kargoFiyatController.text, marketFiyatController.text, gecmisFiyatController.text);

                        Navigator.pop(context);
                        }
                        else{
                          print("eksik girdi");
                        }
                      },
                      color: lightening_yellow,
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              left: 24,
              top: 50,
              child: IconButton(
                iconSize: 48,
                color:  Colors.white,
                icon: Icon(
                  Icons.cancel,
                ),
                onPressed: () => Navigator.pop(context),
              )
//            child: ButtonRoundWithShadow(
//              size: 48,
//              iconPath: "assets/icons/close.svg",
//              borderColor: black,
//              shadowColor: black,
//              color: white,
//              callback: () {
//                Navigator.of(context).pop();
//              },
//            ),
              )
        ],
      ),
    );
  }
}
