import 'package:flutter/material.dart';
import 'package:tradelink_app/widgets/header_text.dart';
import 'package:tradelink_app/widgets/sortable_table.dart';
import 'package:tradelink_app/widgets/table.dart';

class PointOfSale extends StatelessWidget {
  const PointOfSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      SizedBox(height: 18,),
      Center(child: HeaderText(title: "Electronic Point of Sale", description: "Scan item code.")),
           SizedBox(height: 18,),     
    SizedBox(
      height: 300,
      width: 330,
      child: Card(
        child: eTable())),
        SizedBox(height: 18,), 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sub-Total"),
                Text("Amount Paid"),
                Text("Change"),
              ],
            ),
          ],
        ),
      ),
      ],
      ),
      );
  }
}