import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/custom_widgets/button_plain.dart';
import 'package:todo_app/linking/contract_linking.dart';
import 'package:todo_app/utils/colors.dart';

String hata_mesaji="";

class CreateUrun extends StatelessWidget {
  TextEditingController titleController = TextEditingController();
  TextEditingController descpController = TextEditingController();
  TextEditingController fabrikaFiyatController = TextEditingController();

  TextEditingController toptanciAdController = TextEditingController();
  TextEditingController toptanciFiyatController = TextEditingController();


  TextEditingController kargoAdController = TextEditingController();
  TextEditingController kargoFiyatController = TextEditingController();

  TextEditingController marketAdController = TextEditingController();
  TextEditingController marketFiyatController = TextEditingController();

  TextEditingController tarihAdController = TextEditingController();
  TextEditingController gecmisFiyatController = TextEditingController();


  String toptanci_isimleri="";
  String toptanci_Fiyatlari="";
  String toptanci_total="";
  int toptanci_adet=0;

  String kargo_isimleri="";
  String kargo_Fiyatlari="";
  String kargo_total="";
  int kargo_adet=0;

  String market_isimleri="";
  String market_Fiyatlari="";
  String market_total="";
  int market_adet=0;

  String tarih_isimleri="";
  String gecmisteki_Fiyatlari="";
  String gecmis_total="";
  int gecmis_adet=0;





  @override
  Widget build(BuildContext context) {
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
                        "YENİ ÜRÜN EKLEME",
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
                          hintText: "İsim",
                          hintStyle: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: Colors.white54),
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
                      controller: descpController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: "Açıklama",
                          hintStyle: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color:Colors.white54),
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

                    TextField(
                      controller: fabrikaFiyatController,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                      ],
                      decoration: InputDecoration(
                          hintText: "Üretici Fiyatı",
                          hintStyle: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: Colors.white54),
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

                    listeGirme(
                      controller1: toptanciAdController,
                      controller2: toptanciFiyatController,
                      String_Ad: toptanci_isimleri,
                      String_Fiyat: toptanci_Fiyatlari,
                      total: toptanci_total,
                      cins:"Toptanci ",
                      callback: (){
                        if(toptanciAdController.text.length>0&&toptanciFiyatController.text.length>0){
                          toptanci_isimleri=toptanci_isimleri+(toptanciAdController.text)+"|";
                          toptanci_Fiyatlari=toptanci_Fiyatlari+(toptanciFiyatController.text)+"|";

                          toptanci_total="$toptanci_isimleri : $toptanci_Fiyatlari";
                          print(toptanci_total);
                          toptanci_adet++;

                          toptanciAdController.clear();
                          toptanciFiyatController.clear();}
                        else{
                          print("eksik girdi");
                        }

                      },
                    ),


                    listeGirme(
                      controller1: kargoAdController,
                      controller2: kargoFiyatController,
                      String_Ad: kargo_isimleri,
                      String_Fiyat: kargo_Fiyatlari,
                      total: kargo_total,
                      cins:"Kargocu ",
                      callback: (){
                        if(kargoAdController.text.length>0&&kargoFiyatController.text.length>0){
                          kargo_isimleri=kargo_isimleri+(kargoAdController.text)+"|";
                          kargo_Fiyatlari=kargo_Fiyatlari+(kargoFiyatController.text)+"|";

                          kargo_total="$kargo_isimleri : $kargo_Fiyatlari";
                          print(kargo_total);
                          kargo_adet++;

                          kargoAdController.clear();
                          kargoFiyatController.clear();}
                        else{
                          print("eksik girdi");
                        }

                      },
                    ),
                    listeGirme(
                      controller1: marketAdController,
                      controller2: marketFiyatController,
                      String_Ad: market_isimleri,
                      String_Fiyat: market_Fiyatlari,
                      total: market_total,
                      cins:"Market ",
                      callback: (){
                        if(marketAdController.text.length>0&&marketFiyatController.text.length>0){
                          market_isimleri=market_isimleri+(marketAdController.text)+"|";
                          market_Fiyatlari=market_Fiyatlari+(marketFiyatController.text)+"|";

                          market_total="$market_isimleri : $market_Fiyatlari";
                          print(market_total);
                          market_adet++;

                          marketAdController.clear();
                          marketFiyatController.clear();}
                        else{
                          print("eksik girdi");
                        }

                      },
                    ),
                    listeGirme(
                      controller1: tarihAdController,
                      controller2: gecmisFiyatController,
                      String_Ad: tarih_isimleri,
                      String_Fiyat: gecmisteki_Fiyatlari,
                      total: gecmis_total,
                      cins:"Gecmis Tarih ",
                      callback: (){
                        if(tarihAdController.text.length>0&&gecmisFiyatController.text.length>0){

                          tarih_isimleri=tarih_isimleri+(tarihAdController.text)+"|";
                          gecmisteki_Fiyatlari=gecmisteki_Fiyatlari+(gecmisFiyatController.text)+"|";

                          gecmis_total="$tarih_isimleri : $gecmisteki_Fiyatlari";
                          print(gecmis_total);
                          gecmis_adet++;

                          tarihAdController.clear();
                          gecmisFiyatController.clear();}
                        else{
                          print("eksik girdi");
                        }

                      },
                    ),






                    SizedBox(
                      height: 40,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text("$hata_mesaji",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),),
                      ],
                    ),


                    ButtonPlainWithShadow(
                      text: "URUNU EKLE",
                      shadowColor: wood_smoke,
                      borderColor: wood_smoke,
                      callback: () {
                        if(titleController.text.length>0 && descpController.text.length>0 && fabrikaFiyatController.text.length>0 &&toptanci_adet>3&&kargo_adet>3&&market_adet>3&&gecmis_adet>2){

    contractLinking.createProducts(
                              titleController.text, descpController.text, fabrikaFiyatController.text, toptanci_total,kargo_total,market_total,gecmis_total);

                          titleController.clear();
                          descpController.clear();
                          Navigator.pop(context);

    }
                        else{

                          hata_mesaji="Eksik veya Hatalı Girdi Girdiniz";
                          print("girdi eksik");
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => CreateUrun()));


                        }
                      },
                      color: lightening_yellow,
                    ),

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
                color: Colors.white,
                icon: Icon(
                  Icons.cancel,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ))
        ],
      ),
    );

  }

//titleController.text.length>0 && descpController.text.length>0 && fabrikaFiyatController.text.length>0 &&toptanci_adet>3&&kargo_adet>3&&market_adet>3&&gecmis_adet>2

}
class listeGirme extends StatelessWidget{

  TextEditingController controller1;
  TextEditingController controller2;
  String cins;
  String String_Ad;
  String String_Fiyat;
  String total;
  final VoidCallback callback;

  listeGirme({
    this.controller1,
    this.controller2,
    this.cins,
    this.String_Ad,
    this.String_Fiyat,
    this.total,
    this.callback
  });


  @override
  Widget build (BuildContext context){
    return Column(
      children: [
        TextField(
          controller: controller1,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              hintText: "$cins ismi",
              hintStyle: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                  color: Colors.white54),
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.white),
                  borderRadius:
                  BorderRadius.all(Radius.circular(16))),
              contentPadding: EdgeInsets.all(16),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.white),
                  borderRadius:
                  BorderRadius.all(Radius.circular(16))),
              prefixIcon: Icon(Icons.description, color:Colors.white)),
        ),
        TextField(
          controller: controller2,
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
          ],
          decoration: InputDecoration(
              hintText: "$cins fiyatı",
              hintStyle: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                  color: Colors.white54),
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.white),
                  borderRadius:
                  BorderRadius.all(Radius.circular(16))),
              contentPadding: EdgeInsets.all(16),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.white),
                  borderRadius:
                  BorderRadius.all(Radius.circular(16))),
              prefixIcon: Icon(Icons.description, color:Colors.white)),
        ),


        ButtonPlainWithShadow(
          text: "$cins fiyat bilgisi ekle",
          shadowColor: wood_smoke,
          borderColor: wood_smoke,
          callback: callback,
          color: lightening_yellow,
        ),

      ],
    );
  }

}

