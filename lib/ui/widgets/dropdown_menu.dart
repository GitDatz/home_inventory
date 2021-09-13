import 'package:flutter/material.dart';
import 'package:home_inventory/utils/category.dart';

class DropdownMenu extends StatefulWidget {
  final void Function(String) _callback;
  final List<String> _dropdownList;
  final String _defaultDropdownValue;
  final bool _useIcon;

  DropdownMenu(this._callback, this._dropdownList, this._defaultDropdownValue, this._useIcon);

  @override
  _DropdownMenu createState() => _DropdownMenu();
}

class _DropdownMenu extends State<DropdownMenu> {
  String _dropdownValue;

  @override
  void initState() {
    _dropdownValue = widget._defaultDropdownValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      onChanged: (value) => setState(() { _dropdownValue = value; widget._callback(_dropdownValue); }),
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
      );}).toList()
    );
  }
}