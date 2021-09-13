import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_inventory/ui/pages/add_article_page.dart';
import 'package:home_inventory/ui/transitions/route_transition.dart';
import 'package:home_inventory/utils/constants.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanToAddArticlePage extends StatefulWidget {
  ScanToAddArticlePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ScanToAddArticlePage createState() => _ScanToAddArticlePage();
}

class _ScanToAddArticlePage extends State<ScanToAddArticlePage> {
  String _scanResult = "";

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
            _scanItemButton(),
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
          onPressed: () => { scanBarcodeNormal() },
          onLongPress: () => { _testScan() },
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

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanResult = barcodeScanRes;
      _goToAddArticlePage();
      // TODO: based on if ID is found, go to AddNewItem or UpdateStock
    });
  }

  void _testScan() {
    _scanResult = "abcd1234";
    _goToAddArticlePage();
  }

  void _goToAddArticlePage() {
    Navigator.push(context, RouteTransition(startPage: this.widget, destinationPage: AddArticlePage(title: ADD_ARTICLE_TITLE, articleId: _scanResult,)));
  }
}