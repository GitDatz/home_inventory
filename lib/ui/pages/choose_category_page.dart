import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:home_inventory/constants.dart';

class ChooseCategoryPage extends StatefulWidget {
  ChooseCategoryPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ChooseCategoryPageState createState() => _ChooseCategoryPageState();
}

class _ChooseCategoryPageState extends State<ChooseCategoryPage> {
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
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: _bakeButton(), flex: 1),
              Expanded(child: _baseButton(), flex: 1)
            ],
          ),
          Row(
            children: [
              Expanded(child: _dairyButton(), flex: 1),
              Expanded(child: _drinksButton(), flex: 1)
            ],
          ),
          Row(
            children: [
              Expanded(child: _fruitsButton(), flex: 1),
              Expanded(child: _householdButton(), flex: 1)
            ],
          ),
          Row(
            children: [
              Expanded(child: _kidsButton(), flex: 1),
              Expanded(child: _meatsButton(), flex: 1)
            ],
          ),
          Row(
            children: [
              Expanded(child: _spicesButton(), flex: 1),
              Expanded(child: _veggiesButton(), flex: 1)
            ],
          ),
          Expanded(child: SizedBox(width: double.infinity, child: _showAllButton()), flex: 1)
        ]
      )
    );
  }

  Widget _bakeButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 5.0, 2.5, 5.0),
      child: ElevatedButton(
        onPressed: () => {},
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(MaterialCommunityIcons.cake_variant, size: BUTTON_ICON_SIZE),
            Text(BAKE_BUTTON_TEXT)
          ],
        ),
      )
    );
  }

  Widget _baseButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(2.5, 5.0, 10.0, 5.0),
      child: ElevatedButton(
        onPressed: () => {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(MaterialCommunityIcons.baguette, size: BUTTON_ICON_SIZE),
            Text(BASE_BUTTON_TEXT)
          ],
        ),
      )
    );
  }

  Widget _dairyButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 2.5, 5.0),
      child: ElevatedButton(
        onPressed: () => {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(MaterialCommunityIcons.cow, size: BUTTON_ICON_SIZE),
            Text(DAIRY_BUTTON_TEXT)
          ],
        ),
      )
    );
  }

  Widget _drinksButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(2.5, 0.0, 10.0, 5.0),
      child: ElevatedButton(
        onPressed: () => {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(MaterialCommunityIcons.glass_wine, size: BUTTON_ICON_SIZE),
            Text(DRINKS_BUTTON_TEXT)
          ],
        ),
      )
    );
  }

  Widget _fruitsButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 2.5, 5.0),
      child: ElevatedButton(
        onPressed: () => {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(MaterialCommunityIcons.food_apple, size: BUTTON_ICON_SIZE),
            Text(FRUITS_BUTTON_TEXT)
          ],
        ),
      )
    );
  }

  Widget _householdButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(2.5, 0.0, 10.0, 5.0),
      child: ElevatedButton(
        onPressed: () => {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(MaterialCommunityIcons.home, size: BUTTON_ICON_SIZE),
            Text(HOUSEHOLD_BUTTON_TEXT)
          ],
        ),
      )
    );
  }

  Widget _kidsButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 2.5, 5.0),
      child: ElevatedButton(
        onPressed: () => {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(MaterialCommunityIcons.baby_carriage, size: BUTTON_ICON_SIZE),
            Text(KIDS_BUTTON_TEXT)
          ],
        ),
      )
    );
  }

  Widget _meatsButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(2.5, 0.0, 10.0, 5.0),
      child: ElevatedButton(
        onPressed: () => {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FlutterIcons.drumstick_bite_faw5s, size: BUTTON_ICON_SIZE),
            Text(MEATS_BUTTON_TEXT)
          ],
        ),
      )
    );
  }

  Widget _spicesButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 2.5, 2.5),
      child: ElevatedButton(
        onPressed: () => {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(MaterialCommunityIcons.chili_medium, size: BUTTON_ICON_SIZE),
            Text(SPICES_BUTTON_TEXT)
          ],
        ),
      )
    );
  }

  Widget _veggiesButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(2.5, 0.0, 10.0, 2.5),
      child: ElevatedButton(
        onPressed: () => {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(MaterialCommunityIcons.carrot, size: BUTTON_ICON_SIZE),
            Text(VEGGIES_BUTTON_TEXT)
          ],
        ),
      )
    );
  }

  Widget _showAllButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 2.5, 10.0, 5.0),
      child: ElevatedButton(
        onPressed: () => {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(SHOW_ALL_BUTTON_TEXT)
          ],
        ),
      )
    );
  }
}