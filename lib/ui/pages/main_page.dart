import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
            _checkInventory(),
            _addItemButton(),
            _removeItemButton()
          ],
        ),
      ),
    );
  }

  Widget _checkInventory() {
    return ElevatedButton(
        onPressed: () => {},
        child: Text("Check Inventory")
    );
  }

  Widget _addItemButton() {
    return ElevatedButton(
        onPressed: () => {},
        child: Text("Add Item")
    );
  }

  Widget _removeItemButton() {
    return ElevatedButton(
        onPressed: () => {},
        child: Text("Remove Item")
    );
  }
}
