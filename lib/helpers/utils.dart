import 'package:flutter/material.dart';
import 'package:mpd/models/category.dart';

class Utils {

  static List<Category> getCategories(){
    return [
      Category(
        color: Colors.transparent,
        name: "Shopping",
        imgName: "groceries",
        subCategories: []
      ),
      Category(
          color: Colors.transparent,
          name: "Restaurants",
          imgName: "restaurant",
          subCategories: []
      )
    ];
  }
}