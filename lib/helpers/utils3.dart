import 'package:flutter/material.dart';
import 'package:mpd/models/supermarkets.dart';

class Utils3 {

  static List<Supermarkets> getSupermarkets(){
    return [
      Supermarkets(
          color: Colors.transparent,
          name: "Horebu Supermarket",
          imgName: "horebu",
          subCategories: []
      ),
      Supermarkets(
          color: Colors.transparent,
          name: "Simba",
          imgName: "simba",
          subCategories: []
      ),
      Supermarkets(
          color: Colors.transparent,
          name: "T2000",
          imgName: "simba",
          subCategories: []
      ),
    ];
  }
}