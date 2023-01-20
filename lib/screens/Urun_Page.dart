import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/custom_widgets/button_plain.dart';
import 'package:todo_app/linking/contract_linking.dart';
import 'package:todo_app/utils/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../custom_widgets/custom_app_bar.dart';

String task_id;
String taskTitle;
String taskDescription;
String data3;
String data4;
String data5;
String data6;
String data7;

class UrunPage extends StatefulWidget {
  @override
  _UrunPageState createState() => _UrunPageState();
}


class  _UrunPageState extends State<UrunPage> {


  final List<String> data4_isimler=data4.split(" : ")[0].split("|");
  final List<String> data5_isimler=data5.split(" : ")[0].split("|");
  final List<String> data6_isimler=data6.split(" : ")[0].split("|");
  final List<String> data7_isimler=data7.split(" : ")[0].split("|");


  final List<String> data4_fiyatlar=data4.split(" : ")[1].split("|");
  final List<String> data5_fiyatlar=data5.split(" : ")[1].split("|");
  final List<String> data6_fiyatlar=data6.split(" : ")[1].split("|");
  final List<String> data7_fiyatlar=data7.split(" : ")[1].split("|");







  @override
  Widget build(BuildContext context) {

    bool Hata_Yakala=data4_fiyatlar.length<4 || data5_fiyatlar.length<4 ||data6_fiyatlar.length<4 ||data7_fiyatlar.length<3 ||data4_isimler.length<4 || data5_isimler.length<4 ||data6_isimler.length<4 ||data7_isimler.length<3 ;



    if(Hata_Yakala){
      return Scaffold(backgroundColor: Colors.blueGrey,body: Text("hatalı veya eksik ürün girdisi"));
    }
    else{

      double su_AnKi_Ort_kargo= (double.parse(data4_fiyatlar[0])+double.parse(data4_fiyatlar[1])+double.parse(data4_fiyatlar[2])+double.parse(data4_fiyatlar[3]))/4;
      double su_AnKi_Ort_toptanci= (double.parse(data5_fiyatlar[0])+double.parse(data5_fiyatlar[1])+double.parse(data5_fiyatlar[2])+double.parse(data5_fiyatlar[3]))/4;
      double su_AnKi_Ort_market= (double.parse(data6_fiyatlar[0])+double.parse(data6_fiyatlar[1])+double.parse(data6_fiyatlar[2])+double.parse(data6_fiyatlar[3]))/4;

      final double uretici_fiyat=double.parse(data3);

      return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: CustomAppBar(
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 24),

              child:
                Column(
                  children: [
                    Text(
                      taskTitle ?? "",
                      style: TextStyle(
                          fontSize: 44,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, left: 24),

                    child: Text("Ürün açıklaması: $taskDescription",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: white),),),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, ),
                    child: Text("Üretici fiyatı: $data3",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: white),),),

                  ],
                ),

            ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 25,),

                child:
                   IconButton(
                        iconSize: 48,
                        color: Colors.white,
                        icon: Icon(
                          Icons.cancel,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),

                Expanded(
                  flex: 5,
                  child: ListView(
                    padding: EdgeInsets.all(34),
                    children: <Widget>[
                      SizedBox(
                        height: 24,
                      ),


                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Toptancıların Kıyaslanması",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: white),
                      ),
                      Container(
                          child: SfCartesianChart(
                            // Initialize category axis
                              primaryXAxis: CategoryAxis(
                                labelStyle: TextStyle(color: Colors.white),
                              ),
                              primaryYAxis: CategoryAxis(
                                labelStyle: TextStyle(color: Colors.white),
                              ),


                              series: <ChartSeries<GraphValues, String>>[
                                ColumnSeries<GraphValues, String>(
                                  // Bind data source
                                  color: Colors.amber,
                                  dataSource:  <GraphValues>[
                                    GraphValues(data4_isimler[0], double.parse(data4_fiyatlar[0])),
                                    GraphValues(data4_isimler[1], double.parse(data4_fiyatlar[1])),
                                    GraphValues(data4_isimler[2], double.parse(data4_fiyatlar[2])),
                                    GraphValues(data4_isimler[3], double.parse(data4_fiyatlar[3])),
                                  ],
                                  xValueMapper: (GraphValues data, _) => data.X_ekseni,
                                  yValueMapper: (GraphValues data, _) => data.Y_ekseni,
                                  dataLabelSettings: DataLabelSettings(isVisible: true,color: black),

                                )
                              ]
                          )
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Kargocuların Kıyaslanması",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: white),
                      ),
                      Container(
                          child: SfCartesianChart(
                            // Initialize category axis
                              primaryXAxis: CategoryAxis(
                                labelStyle: TextStyle(color: Colors.white),
                              ),
                              primaryYAxis: CategoryAxis(
                                labelStyle: TextStyle(color: Colors.white),
                              ),




                              series: <ChartSeries<GraphValues, String>>[
                                ColumnSeries<GraphValues, String>(
                                  // Bind data source
                                    color: Colors.amber,
                                    dataSource:  <GraphValues>[
                                      GraphValues(data5_isimler[0], double.parse(data5_fiyatlar[0])),
                                      GraphValues(data5_isimler[1], double.parse(data5_fiyatlar[1])),
                                      GraphValues(data5_isimler[2], double.parse(data5_fiyatlar[2])),
                                      GraphValues(data5_isimler[3], double.parse(data5_fiyatlar[3])),
                                    ],
                                    xValueMapper: (GraphValues data, _) => data.X_ekseni,
                                    yValueMapper: (GraphValues data, _) => data.Y_ekseni,
                                  dataLabelSettings: DataLabelSettings(isVisible: true,color: black),
                                )
                              ]
                          )
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Marketlerin Kıyaslanması",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: white),
                      ),
                      Container(
                          child: SfCartesianChart(
                            // Initialize category axis
                              primaryXAxis: CategoryAxis(
                                labelStyle: TextStyle(color: Colors.white),
                              ),
                              primaryYAxis: CategoryAxis(
                                labelStyle: TextStyle(color: Colors.white),
                              ),


                              series: <ChartSeries<GraphValues, String>>[
                                ColumnSeries<GraphValues, String>(
                                  // Bind data source
                                    color: Colors.amber,
                                    dataSource:  <GraphValues>[
                                      GraphValues(data6_isimler[0], double.parse(data6_fiyatlar[0])),
                                      GraphValues(data6_isimler[1], double.parse(data6_fiyatlar[1])),
                                      GraphValues(data6_isimler[2], double.parse(data6_fiyatlar[2])),
                                      GraphValues(data6_isimler[3], double.parse(data6_fiyatlar[3])),
                                    ],
                                    xValueMapper: (GraphValues sales, _) => sales.X_ekseni,
                                    yValueMapper: (GraphValues sales, _) => sales.Y_ekseni,
                                  dataLabelSettings: DataLabelSettings(isVisible: true,color: black),
                                )
                              ]
                          )
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Ortalama Fiyatın Zamana Bağlı Değişimi",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: white),
                      ),

                      Container(
                          child: SfCartesianChart(
                            // Initialize category axis
                              primaryXAxis: CategoryAxis(
                                labelStyle: TextStyle(color: Colors.white),
                              ),
                              primaryYAxis: CategoryAxis(
                                labelStyle: TextStyle(color: Colors.white),
                              ),



                              series: <LineSeries<GraphValues, String>>[
                                LineSeries<GraphValues, String>(
                                  // Bind data source
                                  color: Colors.redAccent,

                                  dataSource:  <GraphValues>[
                                    GraphValues(data7_isimler[0], double.parse(data7_fiyatlar[0])),
                                    GraphValues(data7_isimler[1], double.parse(data7_fiyatlar[1])),
                                    GraphValues(data7_isimler[2], double.parse(data7_fiyatlar[2])),
                                    GraphValues('Şu an', su_AnKi_Ort_market),
                                  ],
                                  xValueMapper: (GraphValues sales, _) => sales.X_ekseni,
                                  yValueMapper: (GraphValues sales, _) => sales.Y_ekseni,
                                  dataLabelSettings: DataLabelSettings(isVisible: true,color: black),
                                )
                              ]
                          )
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Üreticiden Tüketiciye Ulaşana Kadarki Değişim",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: white),
                      ),
                      Container(
                          child: SfCartesianChart(
                            // Initialize category axis
                              primaryXAxis: CategoryAxis(
                                labelStyle: TextStyle(color: Colors.white),
                              ),
                              primaryYAxis: CategoryAxis(
                                labelStyle: TextStyle(color: Colors.white),
                              ),

                              series: <LineSeries<GraphValues, String>>[
                                LineSeries<GraphValues, String>(
                                  // Bind data source
                                  color: Colors.red,

                                  dataSource:  <GraphValues>[
                                    GraphValues("üretici", uretici_fiyat),
                                    GraphValues("kargo", su_AnKi_Ort_kargo),
                                    GraphValues("toptancı", su_AnKi_Ort_toptanci),
                                    GraphValues("Perakende", su_AnKi_Ort_market),
                                  ],
                                  xValueMapper: (GraphValues sales, _) => sales.X_ekseni,
                                  yValueMapper: (GraphValues sales, _) => sales.Y_ekseni,
                                  dataLabelSettings: DataLabelSettings(isVisible: true,color: black),
                                )
                              ]
                          )
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text("Ürün ID: $task_id",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: white),),


                    ],
                  ),
                ),
              ],
            ),


          ],
        ),
      );}
  }
}
class GraphValues {
  GraphValues(this.X_ekseni, this.Y_ekseni);
  final String X_ekseni;
  final double Y_ekseni;
}