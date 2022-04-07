import 'package:flutter/material.dart';
import 'package:mpd/models/category.dart';
// import 'package:mpd/models/supermarkets.dart';

class Utils2 {
  static List<Category> getCategories() {
    return [
      Category(
          color: Colors.transparent,
          name: "Supermarkets",
          imgName: "SuperMarket",
          subCategories: []),
      Category(
          color: Colors.transparent,
          name: "Clothing Stores",
          imgName: "Clothing",
          subCategories: []),
      Category(
          color: Colors.transparent,
          name: "General Supplies",
          imgName: "Supplies",
          subCategories: []),
    ];
  }
}
