import 'package:flutter/material.dart';
import 'package:home_inventory/constants.dart';
import 'package:home_inventory/ui/pages/login_page.dart';

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
      home: LoginPage(title: LOGIN_PAGE_TITLE),
    );
  }
}
