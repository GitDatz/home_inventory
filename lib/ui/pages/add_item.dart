import 'package:flutter/material.dart';
import 'package:home_inventory/constants.dart';

class AddItemPage extends StatefulWidget {
  AddItemPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AddItemPageState createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _scanItemButton()
          ],
        ),
      ),
    );
  }

  Widget _scanItemButton() {
    return ElevatedButton(
        onPressed: () => {},
        child: Text(SCAN_ITEM_BUTTON_TEXT)
    );
  }
}