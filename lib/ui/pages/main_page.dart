import 'package:flutter/material.dart';
import 'package:home_inventory/utils/constants.dart';
import 'package:home_inventory/ui/pages/scan_to_add_article_page.dart';
import 'package:home_inventory/ui/pages/choose_category_page.dart';
import 'package:home_inventory/ui/pages/scan_to_remove_article_page.dart';
import 'package:home_inventory/ui/transitions/route_transition.dart';

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
            _removeItemButton(context)
          ],
        ),
      ),
    );
  }

  Widget _checkInventory(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(SIDE_PADDING, 0.0, SIDE_PADDING, 0.0),
      child: SizedBox(
        height: BUTTON_HEIGHT,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, RouteTransition(startPage: this.widget, destinationPage: ChooseCategoryPage(title: CHOOSE_CATEGORY_TITLE)));
          },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.assessment_outlined, size: BUTTON_ICON_SIZE),
                Text(CHECK_INVENTORY_BUTTON_TEXT, textAlign: TextAlign.center,)
              ],
            )
        )
      )
    );
  }

  Widget _addItemButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(SIDE_PADDING, BUTTON_VERTICAL_MARGIN, SIDE_PADDING, 0.0),
      child: SizedBox(
        height: BUTTON_HEIGHT,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, RouteTransition(startPage: this.widget, destinationPage: ScanToAddArticlePage(title: SCAN_TO_ADD_ARTICLE_TITLE)));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add_business_outlined, size: BUTTON_ICON_SIZE),
              Text(ADD_ITEM_BUTTON_TEXT, textAlign: TextAlign.center,)
            ],
          )
        )
      )
    );
  }

  Widget _removeItemButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(SIDE_PADDING, BUTTON_VERTICAL_MARGIN, SIDE_PADDING, 0.0),
      child: SizedBox(
        height: BUTTON_HEIGHT,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, RouteTransition(startPage: this.widget, destinationPage: ScanToRemoveArticlePage(title: SCAN_TO_REMOVE_ARTICLE_TITLE)));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.delete_forever_outlined, size: BUTTON_ICON_SIZE),
              Text(REMOVE_ITEM_BUTTON_TEXT, textAlign: TextAlign.center,)
            ],
          )
        )
      )
    );
  }
}
