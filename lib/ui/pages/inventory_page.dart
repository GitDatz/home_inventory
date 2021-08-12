import 'package:flutter/material.dart';

class InventoryPage extends StatefulWidget {
  InventoryPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _InventoryPageState createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            widget.title,
            textAlign: TextAlign.center
        ),
      ),
    );
  }
}