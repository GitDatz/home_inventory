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
    return Padding(
      padding: EdgeInsets.fromLTRB(SIDE_PADDING, 0.0, SIDE_PADDING, 0.0),
      child: SizedBox(
        height: BUTTON_HEIGHT,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.camera_alt_outlined, size: BUTTON_ICON_SIZE),
              Text(SCAN_ITEM_BUTTON_TEXT)
            ],
          )
        )
      )
    );
  }
}