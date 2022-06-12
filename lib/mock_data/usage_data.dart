import 'package:charts_flutter/flutter.dart' as charts;

import 'package:flutter/material.dart';

class UsageSeries {
  final String month;
  final double amount;
  final charts.Color barColor;

  UsageSeries(
      {@required this.month, @required this.amount, @required this.barColor});
}

final List<UsageSeries> dataPower = [
  UsageSeries(
      month: "Jan",
      amount: 10.5,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
  UsageSeries(
      month: "Feb",
      amount: 22.8,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
  UsageSeries(
      month: "Mar",
      amount: 30.2,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
  UsageSeries(
      month: "Apr",
      amount: 30.2,
      barColor: charts.ColorUtil.fromDartColor(Colors.red)),
];

final List<UsageSeries> dataExpenses = [
  UsageSeries(
      month: "Jan",
      amount: 30000.32,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
  UsageSeries(
      month: "Feb",
      amount: 44000.56,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
  UsageSeries(
      month: "Mar",
      amount: 50000.45,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
  UsageSeries(
      month: "Apr",
      amount: 67000.00,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
];
