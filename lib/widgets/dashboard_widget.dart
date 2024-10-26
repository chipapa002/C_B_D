import 'package:flutter/material.dart';
import 'package:tradelink_app/widgets/chart_card.dart';
import 'package:tradelink_app/widgets/header_text.dart';
import 'package:tradelink_app/widgets/matrix_cards.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18,),
        HeaderText(title: "Dashboard", description: "By automating data collection and presentation, dashboards save time and effort for many businesses."),
        const SizedBox(height: 18,),
        Row(
          children: [
            Expanded(child: ChartCard(title: "E-commerce")),
            Expanded(child: ChartCard(title: "Traditional commerce")),
            //Expanded(child: MatrixCards(title: "E-commerce", description: "All the online store Key Performance Indices 'KPI's' can be viewed in detail here", buttonText: "View Stats")),
            //Expanded(child: MatrixCards(title: "Traditional commerce", description: "All the online store Key Performance Indices 'KPI's' can be viewed in detail here", buttonText: "View Stats")),
          ],
        ),
        const SizedBox(height: 18,),
        Row(
          children: [
            Expanded(child: MatrixCards(title: "Inventory", description: "There are no products out of stock.", buttonText: "View")),
            Expanded(child: MatrixCards(title: "Shipments", description: "There are no shipments outstanding.", buttonText: "View")),
            Expanded(child: MatrixCards(title: "Orders", description: "There are no orders outstanding.", buttonText: "View")),
          ],
        ),
      ],
    );
  }
}