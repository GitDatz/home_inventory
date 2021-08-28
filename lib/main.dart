import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:home_inventory/constants.dart';
import 'package:home_inventory/ui/pages/root_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(HomeInventoryApp());
}

class HomeInventoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: BACKGROUND_COLOR,
        primarySwatch: Colors.blueGrey,
      ),
      home: RootPage(),
    );
  }
}
