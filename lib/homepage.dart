import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nurturenest/manual_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TooltipBehavior? _tooltipBehavior;
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];

  @override
void initState(){
  _tooltipBehavior = TooltipBehavior(enable: true);
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height; 
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NURTURE NEST",
          style:
              GoogleFonts.anton(fontSize: 40, color: const Color(0xff8fcbc9)),
        ),
        actions: [
          
          Image.asset(
            "assets/images/nith_logo.png",
            height: height * 0.1,
          ),
        ],
      ), 
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: height * 0.05),

            GestureDetector(
                  onTap: () => Get.offAll(() => const EnterManualDetails()),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.1, vertical: 10),
                    child: Text(
                      "Edit/Add manual data",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

            SizedBox(height: height * 0.05),

            SfCartesianChart(
              
              primaryXAxis: const CategoryAxis(),
              // Chart title
              title: ChartTitle(text: 'Heart Rate', textStyle: GoogleFonts.anton(color: const Color(0xff8fcbc9))),
              // Enable legend
              legend: const Legend(isVisible: true),
              // Enable tooltip
              tooltipBehavior: _tooltipBehavior,

            
              series: <LineSeries<_SalesData, String>>[
                LineSeries<_SalesData, String>(
                  dataSource:  <_SalesData>[
                    _SalesData('9:00 AM', 78),
                    _SalesData('10:00 AM', 82),
                    _SalesData('11:00 AM', 0),
                    _SalesData('12:00 PM', 0),
                    _SalesData('1:00 AM', 88),
                    _SalesData('2:00 AM', 0),
                    _SalesData('3:00 AM', 0),
                    _SalesData('4:00 AM', 0),
                    _SalesData('5:00 AM', 0),
                    _SalesData('6:00 AM', 86),
                    _SalesData('7:00 AM', 0),
                    _SalesData('8:00 AM', 0),
                    
                  ],
                  xValueMapper: (_SalesData sales, _) => sales.day,
                  yValueMapper: (_SalesData sales, _) => sales.sales,
                  // Enable data label
                  dataLabelSettings: const DataLabelSettings(isVisible: true)
                )
              ]
            ),

            SfCartesianChart(
            
              primaryXAxis: const CategoryAxis(),
              title: ChartTitle(text: 'Body Temp (in C)', textStyle: GoogleFonts.anton(color: const Color(0xff8fcbc9))),
              legend: const Legend(isVisible: true),
              tooltipBehavior: _tooltipBehavior,

            
              series: <LineSeries<_SalesData, String>>[
                LineSeries<_SalesData, String>(
                  dataSource:  <_SalesData>[
                    _SalesData('9:00 AM', 93),
                    _SalesData('10:00 AM', 94),
                    _SalesData('11:00 AM', 0),
                    _SalesData('12:00 PM', 0),
                    _SalesData('1:00 AM', 97),
                    _SalesData('2:00 AM', 0),
                    _SalesData('3:00 AM', 0),
                    _SalesData('4:00 AM', 0),
                    _SalesData('5:00 AM', 0),
                    _SalesData('6:00 AM', 95),
                    _SalesData('7:00 AM', 0),
                    _SalesData('8:00 AM', 0),
                    
                  ],
                  xValueMapper: (_SalesData sales, _) => sales.day,
                  yValueMapper: (_SalesData sales, _) => sales.sales,
                  // Enable data label
                  dataLabelSettings: const DataLabelSettings(isVisible: true)
                )
              ]
            ),

            SfCartesianChart(
            
              primaryXAxis: const CategoryAxis(),
              title: ChartTitle(text: 'SpO2', textStyle: GoogleFonts.anton(color: Color(0xff8fcbc9))),
              legend: const Legend(isVisible: true),
              tooltipBehavior: _tooltipBehavior,

            
              series: <LineSeries<_SalesData, String>>[
                LineSeries<_SalesData, String>(
                  dataSource:  <_SalesData>[
                    _SalesData('9:00 AM', 93),
                    _SalesData('10:00 AM', 95),
                    _SalesData('11:00 AM', 0),
                    _SalesData('12:00 PM', 0),
                    _SalesData('1:00 AM', 96),
                    _SalesData('2:00 AM', 0),
                    _SalesData('3:00 AM', 0),
                    _SalesData('4:00 AM', 0),
                    _SalesData('5:00 AM', 0),
                    _SalesData('6:00 AM', 97),
                    _SalesData('7:00 AM', 0),
                    _SalesData('8:00 AM', 0),
                    
                  ],
                  xValueMapper: (_SalesData sales, _) => sales.day,
                  yValueMapper: (_SalesData sales, _) => sales.sales,
                  // Enable data label
                  dataLabelSettings: const DataLabelSettings(isVisible: true)
                )
              ]
            ),

            SfCartesianChart(
            
              primaryXAxis: const CategoryAxis(),
              // Chart title
              title: ChartTitle(text: 'RISK FACTOR', textStyle: GoogleFonts.anton(color: Color(0xff8fcbc9))),
              // Enable legend
              legend: const Legend(isVisible: true),
              // Enable tooltip
              tooltipBehavior: _tooltipBehavior,

            
              series: <LineSeries<_SalesData, String>>[
                LineSeries<_SalesData, String>(
                  dataSource:  <_SalesData>[
                    _SalesData('9:00 AM', 1),
                    _SalesData('10:00 AM', 2),
                    _SalesData('11:00 AM', 0),
                    _SalesData('12:00 PM', 0),
                    _SalesData('1:00 AM', 2),
                    _SalesData('2:00 AM', 0),
                    _SalesData('3:00 AM', 0),
                    _SalesData('4:00 AM', 0),
                    _SalesData('5:00 AM', 0),
                    _SalesData('6:00 AM', 1),
                    _SalesData('7:00 AM', 0),
                    _SalesData('8:00 AM', 0),
                    
                  ],
                  xValueMapper: (_SalesData sales, _) => sales.day,
                  yValueMapper: (_SalesData sales, _) => sales.sales,
                  // Enable data label
                  dataLabelSettings: const DataLabelSettings(isVisible: true)
                )
              ]
            ),
          ],
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.day, this.sales);

  final String day;
  final double sales;
}