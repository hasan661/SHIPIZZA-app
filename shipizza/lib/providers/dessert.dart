import 'package:flutter/cupertino.dart';

class Dessert {
  final String id;
  final int price;
  final String title;
  final String imageURL;

  const Dessert({
    required this.price,
    required this.title,
    required this.id,
    required this.imageURL,
  });
}
class DessertProvider with ChangeNotifier {
  List _desserts = [
    Dessert(
      price: 400,
      title: "Chocolate Molten Lava Cake",
      id: "de1",
      imageURL:
          "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2014/2/19/1/WU0701H_Molten-Chocolate-Cakes_s4x3.jpg.rend.hgtvcom.826.620.suffix/1485880987811.jpeg",
    ),
    Dessert(
      price: 200,
      title: "Ice Cream",
      id: "de2",
      imageURL:
          "https://upload.wikimedia.org/wikipedia/commons/2/2e/Ice_cream_with_whipped_cream%2C_chocolate_syrup%2C_and_a_wafer_%28cropped%29.jpg",
    )

  ];

  List get desserts{
    return [..._desserts];
  }
}
