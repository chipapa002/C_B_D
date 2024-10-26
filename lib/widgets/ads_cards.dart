import 'package:flutter/material.dart';

import '../const/const.dart';

class AdsCards extends StatefulWidget {

  final String image_path;
  final String title;
  final String description;
  final String buttonText;

  AdsCards({required this.image_path, required this.title, required this.description, required this.buttonText});

  @override
  State<AdsCards> createState() => _AdsCardsState();
}

class _AdsCardsState extends State<AdsCards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              widget.image_path,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
            Text(
              widget.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: Text(widget.description)),
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