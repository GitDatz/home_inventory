import 'package:flutter/material.dart';
import 'package:home_inventory/ui/widgets/dropdown_menu.dart';
import 'package:home_inventory/utils/category.dart';
import 'package:home_inventory/utils/constants.dart';
import 'package:home_inventory/utils/quantity.dart';

class AddArticlePage extends StatefulWidget {
  AddArticlePage({Key key, this.title, this.articleId}) : super(key: key);
  final String title;
  final String articleId;

  @override
  _AddArticlePage createState() => _AddArticlePage();
}

class _AddArticlePage extends State<AddArticlePage> {
  final _articleIdController = TextEditingController();
  final _articleNameController = TextEditingController();
  final _articleQuantityController = TextEditingController();
  String _quantityType = 'kg';
  String _category = 'other';

  @override
  void initState() {
    super.initState();
    _articleIdController.text = widget.articleId;
  }

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
            _articleInformation(),
            _addArticleButton()
          ],
        ),
      ),
    );
  }

  Widget _articleInformation() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(SIDE_PADDING, TOP_PADDING, SIDE_PADDING, 0.0),
          child: _articleId(),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(SIDE_PADDING, TOP_PADDING, SIDE_PADDING, 0.0),
          child: _articleNameTextField(),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(SIDE_PADDING, TOP_PADDING, SIDE_PADDING, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _articleQuantityTextField(),
              DropdownMenu(_updateQuantityType, quantityList, _quantityType, false),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Category: '),
            DropdownMenu(_updateCategory, categoryList, _category, true),
          ],
        ),
      ],
    );
  }

  Widget _articleId() {
    return Padding(
      padding: EdgeInsets.fromLTRB(SIDE_PADDING, 0.0, SIDE_PADDING, 0.0),
      child: TextField(
        cursorColor: Colors.lightBlueAccent,
        controller: _articleIdController,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          labelText: 'ID',
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.4,
              style: BorderStyle.solid
            )
          )
        )
      ),
    );
  }

  Widget _articleNameTextField() {
    return Padding(
      padding: EdgeInsets.fromLTRB(SIDE_PADDING, 0.0, SIDE_PADDING, 0.0),
      child: TextField(
        cursorColor: Colors.lightBlueAccent,
        controller: _articleNameController,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          labelText: 'Name',
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.4,
              style: BorderStyle.solid
            )
          )
        )
      ),
    );
  }

  Widget _articleQuantityTextField() {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.fromLTRB(SIDE_PADDING, 0.0, SIDE_PADDING, 0.0),
        child: TextField(
          cursorColor: Colors.lightBlueAccent,
          controller: _articleQuantityController,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            labelText: 'Quantity',
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 1.4,
                style: BorderStyle.solid
              )
            )
          ),
        )
      )
    );
  }

  Widget _addArticleButton() {
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Padding(padding: EdgeInsets.fromLTRB(SIDE_PADDING, 0.0, SIDE_PADDING, SIDE_PADDING),
          child:SizedBox(
            height: ADD_ARTICLE_BUTTON_HEIGHT,
            width: double.infinity,
            child: ElevatedButton(
              child: Text('Add Article'),
              onPressed: () { _addArticle(); },
            ),
          ),
        ),
      ),
    );
  }

  void _addArticle() {
    print("Article id: " + _articleIdController.text);
    print("Article name: " + _articleNameController.text);
    print("Article quantity: " + _articleQuantityController.text);
    print("Article quantity type: " + _quantityType);
    print("Article category: " + _category);
  }

  void _updateQuantityType(String quantityType) {
    _quantityType = quantityType;
  }

  void _updateCategory(String category) {
    _category = category;
  }
}
