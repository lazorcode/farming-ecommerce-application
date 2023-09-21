import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class CategoryProductsChart extends StatelessWidget {
  // final List<charts.Series<Sales, String>> seriesList;
  const CategoryProductsChart({
    Key? key,
    // required this.seriesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfSparkBarChart();
  }
}
