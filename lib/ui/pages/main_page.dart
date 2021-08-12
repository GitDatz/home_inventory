import 'package:flutter/material.dart';
import 'package:home_inventory/constants.dart';
import 'package:home_inventory/ui/pages/add_item.dart';
import 'package:home_inventory/ui/pages/inventory_page.dart';

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
            _checkInventory(context),
            _addItemButton(context),
            _removeItemButton()
          ],
        ),
      ),
    );
  }

  Widget _checkInventory(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => InventoryPage(title: INVENTORY_TITLE)));
        },
        child: Text(CHECK_INVENTORY_BUTTON_TEXT)
    );
  }

  Widget _addItemButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => AddItemPage(title: ADD_ITEM_TITLE)));
        },
        child: Text(ADD_ITEM_BUTTON_TEXT)
    );
  }

  Widget _removeItemButton() {
    return ElevatedButton(
        onPressed: () => {},
        child: Text(REMOVE_ITEM_BUTTON_TEXT)
    );
  }
}
