import 'package:flutter/material.dart';
import 'package:tradelink_app/const/const.dart';

class ProductCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final String description;
  final String price;
  final String quantity;

  ProductCard({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.price,
    required this.quantity,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              widget.imagePath,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(widget.description),
                SizedBox(height: 5),
                Text(
                  widget.price,
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
                SizedBox(height: 5),
                Text("Quantity: ${widget.quantity}"),
                SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: WidgetStatePropertyAll(Colors.white),
                      backgroundColor: WidgetStatePropertyAll(card_background),
                      ),
                    onPressed: () {},
                    child: Text("Edit"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
