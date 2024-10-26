import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:tradelink_app/const/const.dart';
import 'package:tradelink_app/data/linechart_data.dart';

class LineChartWidget extends StatefulWidget {
  const LineChartWidget({super.key});

  @override
  State<LineChartWidget> createState() => _LineChartWidgetState();
}

class _LineChartWidgetState extends State<LineChartWidget> {
  @override
  Widget build(BuildContext context) {

    final data = LinechartData();

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          AspectRatio(aspectRatio: 16/6,
          child: LineChart(LineChartData(lineTouchData: LineTouchData(handleBuiltInTouches: true),
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false),),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false),),
            bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true,
            getTitlesWidget: (double value, TitleMeta meta) {
              return data.bottomTile[value.toInt()] != null? SideTitleWidget(child: Text(data.bottomTile[value.toInt()].toString(),
              style: TextStyle(fontSize: 12,
              color: Colors.grey),), axisSide: meta.axisSide): SizedBox();
            } ,))
          ),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(color: selection_color,
            barWidth: 2.5,
            belowBarData: BarAreaData(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [selection_color.withOpacity(0.5), Colors.transparent]),
                show: true,
            ),
            dotData: FlDotData(show: false),
            spots: data.spots
            ),
          ],
          minX: 0,
          maxX: 120,
          maxY: 100,
          minY: 0,
          ),),),
        ],),
    );
  }
}