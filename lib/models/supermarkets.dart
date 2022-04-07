import 'dart:ui';

class Supermarkets {
  String name;
  Color color;
  String imgName;
  List<Supermarkets>? subCategories;

  Supermarkets(
      {
        required this.name,
        required this.color,
        required this.imgName,
        this.subCategories
      }
      );
}