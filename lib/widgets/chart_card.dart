import 'package:flutter/material.dart';
import 'package:tradelink_app/widgets/line_chart.dart';

class ChartCard extends StatefulWidget {
  
  final String title;

  

  ChartCard({required this.title, });

  @override
  State<ChartCard> createState() => _ChartCardState();
}

class _ChartCardState extends State<ChartCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.info)),
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          LineChartWidget()
          ],
        ),
      ),
    );
  }
}