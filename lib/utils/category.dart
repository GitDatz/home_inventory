import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

enum Category {
  bake,
  base,
  dairy,
  drinks,
  fruits,
  household,
  kids,
  meats,
  spices,
  veggies
}

List<String> categoryList = ['bake',
  'base',
  'dairy',
  'drinks',
  'fruits',
  'household',
  'kids',
  'meats',
  'other',
  'spices',
  'veggies'];

IconData getCategoryIcon(String category) {
  if (category == 'bake') {
    return MaterialCommunityIcons.cake_variant;
  } else if (category == 'base') {
    return MaterialCommunityIcons.baguette;
  } else if (category == 'dairy') {
    return MaterialCommunityIcons.cow;
  } else if (category == 'drinks') {
    return MaterialCommunityIcons.glass_wine;
  } else if (category == "fruits") {
    return MaterialCommunityIcons.food_apple;
  } else if (category == 'household') {
    return MaterialCommunityIcons.home;
  } else if (category == 'kids') {
    return MaterialCommunityIcons.baby_carriage;
  } else if (category == 'meats') {
    return FlutterIcons.drumstick_bite_faw5s;
  } else if (category == 'spices') {
    return MaterialCommunityIcons.chili_medium;
  } else if (category == 'veggies') {
    return MaterialCommunityIcons.carrot;
  }
  return Icons.fastfood;
}
