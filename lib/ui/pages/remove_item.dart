import 'package:flutter/material.dart';
import 'package:home_inventory/constants.dart';

class RemoveItemPage extends StatefulWidget {
  RemoveItemPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _RemoveItemPageState createState() => _RemoveItemPageState();
}

class _RemoveItemPageState extends State<RemoveItemPage> {
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