import 'package:flutter/material.dart';
import 'package:home_inventory/utils/constants.dart';

class ScanToRemoveArticlePage extends StatefulWidget {
  ScanToRemoveArticlePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ScanToRemoveArticlePage createState() => _ScanToRemoveArticlePage();
}

class _ScanToRemoveArticlePage extends State<ScanToRemoveArticlePage> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _scanItemButton()
          ],
        ),
      ),
    );
  }

  Widget _scanItemButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(SIDE_PADDING, TOP_PADDING, SIDE_PADDING, 0.0),
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