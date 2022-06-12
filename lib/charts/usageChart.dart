import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';
import 'package:escom_demo/mock_data/usage_data.dart';
import 'package:flutter/material.dart';

class UsageChart extends StatelessWidget {
  final List<UsageSeries> data;
  final String chartTitle;

  UsageChart({@required this.data, this.chartTitle});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<UsageSeries, String>> series = [
      charts.Series(
        id: chartTitle,
        data: data,
        domainFn: (UsageSeries series, _) => series.month,
        measureFn: (UsageSeries series, _) => series.amount,
        colorFn: (UsageSeries series, _) => series.barColor,
      )
    ];

    return Container(
      height: 300,
      padding: EdgeInsets.all(20),
      child: Card(
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(children: [
                Text(chartTitle),
                Expanded(child: charts.BarChart(series, animate: true))
              ]))),
    );
  }
}
