import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return  Row(
              children: [
                DropdownButton<String>(
                  items: [
                    DropdownMenuItem(child: Text('Filter'), value: 'Filter'),
                    // Add other filter options...
                  ],
                  onChanged: (value) {},
                  hint: Text("Filter"),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Search using product name or SKU.",
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                //SizedBox(width: 20),
              ],
            );
    //Expanded(child: TextField(
    //   decoration: InputDecoration(
    //     filled: true,
    //     fillColor: card_background,
    //     enabledBorder: const OutlineInputBorder(
    //       borderSide: BorderSide(color: Colors.transparent),
        
    //     ),
    //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
    //     focusedBorder: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(12.0),
    //       borderSide: BorderSide(color: Theme.of(context).primaryColor)
    //     ),
    //     contentPadding: EdgeInsets.symmetric(vertical: 5,),
    //     hintText: "Search",
    //     prefix: Icon(Icons.search,
    //     color: Colors.grey,
    //     size: 21,),
    //   ),
    // ));
  }
}