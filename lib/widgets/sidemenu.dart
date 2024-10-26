import 'package:flutter/material.dart';
import 'package:tradelink_app/const/const.dart';
import 'package:tradelink_app/data/menu_data.dart';
import 'package:tradelink_app/main.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  final data = MenuData();
  

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
      child: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context, index) => buildMenuEntry(data,index)),
    );
  }

  Widget buildMenuEntry(MenuData dat, int index){
    final is_Selected = selected == index;
    print(selected);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius:  BorderRadius.circular(6.0),
        color: is_Selected? selection_color: Colors.transparent
      ),
      child: GestureDetector(
        onTap: ()=> setState(() {
          selected = index;
        }),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              child: Icon(data.menu[index].icon,
              color: is_Selected?Colors.white: Colors.black87,),
            ),
            Text(data.menu[index].title,
            style: TextStyle(fontSize: 16,
            color: is_Selected?Colors.white: Colors.black87,),)
          ],
        ),
      ),
    );
  }
}