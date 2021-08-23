import 'package:home_inventory/constants.dart';

class Article {
  final String id;
  final String name;
  String quantity;
  int nrQuantity;

  Article({this.id, this.name, this.quantity, this.nrQuantity});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json[JSON_ID],
      name: json[JSON_NAME],
      quantity: json[JSON_QUANTITY],
      nrQuantity: json[JSON_NR_QUANTITY]
    );
  }

  Map<String, dynamic> toJson() => {
    JSON_ID: id,
    JSON_NAME: name,
    JSON_QUANTITY: quantity,
    JSON_NR_QUANTITY: nrQuantity
  };
}