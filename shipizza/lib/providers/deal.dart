import 'package:flutter/cupertino.dart';

class Deal {
  final String id;
  final String title;
  final items;
  final int price;
  final String serves;

  const Deal({
    required this.price,
    required this.id,
    required this.items,
    required this.title,
    required this.serves,
  });
}

class DealProvider with ChangeNotifier {
  List _deals = [
    Deal(
      id: "d1",
      items: {
        "Pizza": {"Pan Pizza": 1},
        "ColdDrink": {"Tin": 1},
        "Appetizer": {"Any": "2 pieces"}
      },
      title: "Deal 1",
      serves: "1",
      price: 300,
    ),
    Deal(
      id: "d2",
      items: {
        "Pizza": {"Regular Pizza": 1},
        "ColdDrink": {"Tin": 2},
        "Appetizer": {"Any": "4 pieces"},
      },
      title: "Deal 2",
      serves: "2",
      price: 800,
    ),
    Deal(
      id: "d3",
      items: {
        "Pizza": {"Large": 1},
        "ColdDrink": {"1.5 litre": 1},
        "Appetizer": {"Any": "8 pieces"}
      },
      title: "Deal 3",
      serves: "4",
      price: 1000,
    ),
    Deal(
      id: "d4",
      items: {
        "Pizza": {"Jumbo Pizza": 1},
        "ColdDrink": {"1.5 litre": 2},
        "Appetizer": {"Any": "16 pieces"}
      },
      title: "Deal 4",
      serves: "8",
      price: 1500,
    ),
  ];

  dynamic filteredwithid(var id) {
    return _deals.firstWhere((element) => element.id == id);
  }

  List get deal {
    return [..._deals];
  }

  String listinoneline(List item, int index) {
    String value = "";

    value = item[index].items.join();

    return value;
    //
  }
}
