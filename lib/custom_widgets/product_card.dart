import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/screens/Urun_Page.dart';
import 'package:todo_app/custom_widgets/button_plain.dart';
import 'package:todo_app/home.dart';
import 'package:todo_app/linking/contract_linking.dart';
import 'package:todo_app/screens/edit_urun.dart';
import 'package:todo_app/utils/colors.dart';

class TaskCard extends StatelessWidget {
  final Product urun;

  TaskCard({this.urun});


  @override
  Widget build(BuildContext context) {

    var contractLinking = Provider.of<ContractLinking>(context);



    if ("${urun.id}"!="0"){

    return Container(


      margin: EdgeInsets.only(top: 24),
      padding: EdgeInsets.all(24),
      decoration: ShapeDecoration(

          color: Color(0xffce8d15),
          shadows: [
            BoxShadow(
              color: wood_smoke,
              offset: Offset(
                0.0, // Move to right 10  horizontally
                6.0, // Move to bottom 5 Vertically
              ),
            )
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              side: BorderSide(color: wood_smoke, width: 2))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.add_to_photos,
                size: 48,
                color: Colors.white,
              ),
              if_Dev==true ? Row(
                children: [
                  IconButton(
                    tooltip: "Ürün Bilgilerini Güncelleme",
                    iconSize: 48,
                    color: Colors.black,
                    icon: Icon(Icons.settings_suggest_sharp),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditUrun(urun: urun)));
                    }),
                  IconButton(
                      tooltip: "Ürün Bilgilerini Sil",
                      iconSize: 48,
                      color: Colors.black,
                      icon: Icon(Icons.delete_forever),
                      onPressed: () {
                        contractLinking.deleteProduct(urun.id);
                      }),

                ],
              ):Container()
            ],
          ),
          SizedBox(
            height: 24,
          ),
          urun.productTitle == ""
              ? Icon(
                  Icons.error,
                  size: 40,
            color: Colors.white,
                )
              : Text(
                  urun.productTitle,
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
          SizedBox(
            height: 48,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    urun.productDescription?? "",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text("üretici fiyatı: ", style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),),
                      Text(
                        urun.fabrikaFiyat?? "gelmedi ...",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),

                  /*
                  Text(
                    task.data4?? "gelmedi",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: wood_smoke),
                  ),
                  Text(
                    task.data5 ?? "gelmedi",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: wood_smoke),
                  ),
                  Text(
                    task.data6 ?? "gelmedi",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: wood_smoke),
                  ),
                  Text(
                    task.data7 ?? "gelmedi",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: wood_smoke),
                  ),


                  Text(
                    //task.time,
                    "${task.id}",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: wood_smoke),
                  ) */
                ],
              ),
              Row(
                children: [
                  ButtonPlainWithShadow(
                    borderColor: wood_smoke,
                    color: Color(0xff1F4690),
                    text: "Ürünü Görüntüle",
                    height: 48,
                    size: 240,
                    textColor: Colors.white,
                    callback: () {
                      taskTitle=urun.productTitle?? "";
                      taskDescription=urun.productDescription?? "";
                      data3=urun.fabrikaFiyat?? "";
                      data4=urun.toptanciData?? "";
                      data5=urun.kargoData?? "";
                      data6=urun.marketData?? "";
                      data7=urun.gecmisData?? "";
                      task_id="${urun.id}"?? "";
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UrunPage()));
                    },
                    shadowColor: wood_smoke,
                  ),

                ],
              ),
            ],
          )
        ],
      ),
    );}
    else{
      return Container();
    }
  }
}
