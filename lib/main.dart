import 'package:flutter/material.dart';
import 'package:home_inventory/ui/pages/main_page.dart';

void main() {
  runApp(HomeInventoryApp());
}

class HomeInventoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MainPage(title: 'Home Inventory'),
    );
  }
}
