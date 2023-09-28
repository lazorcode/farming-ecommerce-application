import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class CategoryProductsChart extends StatelessWidget {
  final List<BarChartGroupData> seriesList;
  const CategoryProductsChart({
    Key? key,
    required this.seriesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData()


    );
  }
}
