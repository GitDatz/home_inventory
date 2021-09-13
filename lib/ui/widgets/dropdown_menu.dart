import 'package:flutter/material.dart';
import 'package:home_inventory/utils/category.dart';

class DropdownMenu extends StatefulWidget {
  final List<String> _dropdownList;
  final String _defaultDropdownValue;
  final bool _useIcon;

  DropdownMenu(this._dropdownList, this._defaultDropdownValue, this._useIcon);

  @override
  _DropdownMenu createState() => _DropdownMenu();
}

class _DropdownMenu extends State<DropdownMenu> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: widget._defaultDropdownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        onChanged: (value) => setState(() { print("Changing value"); }),
        items: widget._dropdownList
            .map<DropdownMenuItem<String>>((value) {
          return DropdownMenuItem<String>(
              value: value,
              child: Row(
                  children: [
                    widget._useIcon ? Icon(getCategoryIcon(value)) : Text(''),
                    Padding(padding: EdgeInsets.all(4.0)),
                    Text(value),
                  ]
              )
          );
        }).toList()
    );
  }
}