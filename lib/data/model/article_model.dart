import 'package:home_inventory/utils/constants.dart';

class Article {
  final String id;
  final String name;
  final String category;
  final String quantityType;
  int nrQuantity;

  Article({this.id, this.name, this.category, this.quantityType, this.nrQuantity});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json[JSON_ID],
      name: json[JSON_NAME],
      category: json[JSON_CATEGORY],
      quantityType: json[JSON_QUANTITY],
      nrQuantity: json[JSON_NR_QUANTITY]
    );
  }

  Map<String, dynamic> toJson() => {
    JSON_ID: id,
    JSON_NAME: name,
    JSON_CATEGORY: category,
    JSON_QUANTITY: quantityType,
    JSON_NR_QUANTITY: nrQuantity
  };
}