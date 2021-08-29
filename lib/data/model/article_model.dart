import 'package:home_inventory/constants.dart';

class Article {
  final String id;
  final String name;
  final String category;
  String quantity;
  int nrQuantity;

  Article({this.id, this.name, this.category, this.quantity, this.nrQuantity});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json[JSON_ID],
      name: json[JSON_NAME],
      category: json[JSON_CATEGORY],
      quantity: json[JSON_QUANTITY],
      nrQuantity: json[JSON_NR_QUANTITY]
    );
  }

  Map<String, dynamic> toJson() => {
    JSON_ID: id,
    JSON_NAME: name,
    JSON_CATEGORY: category,
    JSON_QUANTITY: quantity,
    JSON_NR_QUANTITY: nrQuantity
  };
}