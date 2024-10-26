import 'package:flutter/material.dart';
import 'package:tradelink_app/const/const.dart';
import 'package:tradelink_app/screens/mainScreen.dart';

void main() {
  runApp(const MyApp());
}
int selected = 0;
class MyApp extends StatefulWidget {
  
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tradelink',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: background_color,
        brightness: Brightness.light,
      ),
      home: const MainScreen(),
    );
  }
}

