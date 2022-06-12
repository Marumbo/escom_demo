
import 'package:escom_demo/charts/usageChart.dart';
import 'package:escom_demo/mock_data/usage_data.dart';
import 'package:flutter/material.dart';

class Usage extends StatefulWidget {
  @override
  _UsageState createState() => _UsageState();
}
 
class _UsageState extends State<Usage> {
final String meterNumber = "12345678";
final String accountName="Test Account";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Usage Statistics"),
      ),
      body: SafeArea (
        child: SingleChildScrollView(
          child: Column(
            children: [
//account data widget will be extracted
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Text("Account Details",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.blue
                        
                      ),textAlign:TextAlign.center,),
                      Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,      
                  children: [
                     
                      Text("Meter Number: $meterNumber"),
                      Text("Account Name:$accountName")

                    ]
                  )
                ],
              )
              
              ),
              Divider(),
            //charts widget
            Container(
              child: Column(
                    children: [
                      UsageChart(
                             data: dataPower,
                             chartTitle: "Power Usage",
                             ),
                    Divider(),
                    UsageChart(
                             data: dataExpenses,
                             chartTitle: "Monthly Expenditure",
                             )
                        

                ]
                )
            )

            ]

            )
            )
        )

        );

  }
}

