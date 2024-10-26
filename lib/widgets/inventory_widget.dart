import 'package:flutter/material.dart';
import 'package:tradelink_app/widgets/header_text.dart';
import 'package:tradelink_app/widgets/sortable_table.dart';

class InventoryWidget extends StatelessWidget {
  const InventoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      SizedBox(height: 18,),
      HeaderText(title: "Inventory Management", description: "Plan, organize, and manage the acquisition, storage, and distribution of inventory."),
      SizedBox(height: 18,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Search using product name or SKU.",
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
           SizedBox(height: 18,),     
    Expanded(child: SortablePage())],),);
  }
}