import 'package:flutter/material.dart';

import '../const/const.dart';

class MatrixCards extends StatefulWidget {
  
  final String title;
  final String description;
  final String buttonText;

  MatrixCards({required this.title, required this.description, required this.buttonText});

  @override
  State<MatrixCards> createState() => _MatrixCardsState();
}

class _MatrixCardsState extends State<MatrixCards> {
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
            SizedBox(height: 10),
            Text(widget.description),
            SizedBox(height: 10),
            ElevatedButton(
                style: ButtonStyle(
                      foregroundColor: WidgetStatePropertyAll(Colors.white),
                      backgroundColor: WidgetStatePropertyAll(card_background),
                      ),
              onPressed: () {},
              child: Text(widget.buttonText),
            ),
          ],
        ),
      ),
    );
  }
}