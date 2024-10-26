import 'package:flutter/material.dart';
import 'package:tradelink_app/widgets/header_text.dart';
import 'package:tradelink_app/widgets/product_card.dart';

import 'header_widget.dart';

class CatalogueWidget extends StatefulWidget {
  const CatalogueWidget({super.key});

  @override
  State<CatalogueWidget> createState() => _CatalogueWidgetState();
}

class _CatalogueWidgetState extends State<CatalogueWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18,),
        HeaderText(title: "Product & Service", description: "Organize inventory items by category, product line, or other criteria. Catalogue provides a high-level view of inventory levels."),
        const SizedBox(height: 18,),
        HeaderWidget(),
        const SizedBox(height: 18,),
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 1.1,

            //mainAxisSpacing: 12,
            //crossAxisSpacing: 5,
            children: [
             ProductCard(imagePath: "assets/icons/book.png", title: "Scholar", description: "Counter book A4 3 quire", price: "R40", quantity: "200"),
             ProductCard(imagePath: "assets/icons/Coke.webp", title: "CocaCola", description: "Soft drink", price: "R25", quantity: "100"),
             ProductCard(imagePath: "assets/icons/white_Star.png", title: "White Star", description: "10kg Maize Meal", price: "R190", quantity: "200"),
             ProductCard(imagePath: "assets/icons/kellogs.png", title: "Kelllogs", description: "Corn Flakes", price: "R80", quantity: "100"),
             ProductCard(imagePath: "assets/icons/milk.png", title: "Clover", description: "2L Full Cream Fresh Milk", price: "R30", quantity: "200"),
            ],
          ),
        ),
        const SizedBox(height: 18,),
      ],
    );
  }
}