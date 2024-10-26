import 'package:flutter/material.dart';
import 'package:tradelink_app/models/menu_model.dart';

class MenuData{
  final menu = const <Menu>[
    Menu(icon: Icons.dashboard_rounded, title: "Dashboard"),
    Menu(icon: Icons.shopping_bag, title: "Catalogue"),
    Menu(icon: Icons.ads_click_outlined, title: "e-Marketing"),
    Menu(icon: Icons.monetization_on, title: "Sales"),
    Menu(icon: Icons.inventory_2_sharp, title: "Inventory"),
    Menu(icon: Icons.report, title: "Reports"),
    Menu(icon: Icons.payments_rounded, title: "Funding"),
    Menu(icon: Icons.school_rounded, title: "Education"),
    Menu(icon: Icons.logout_outlined, title: "Log Out"),
  ];
}