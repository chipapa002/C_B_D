import 'package:flutter/material.dart';

class HeaderText extends StatefulWidget {
  final String title;
  final String description;
 

  HeaderText({required this.title, required this.description});

  @override
  State<HeaderText> createState() => _HeaderTextState();
}

class _HeaderTextState extends State<HeaderText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(widget.description),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}