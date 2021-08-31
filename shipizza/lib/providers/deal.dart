import 'package:flutter/cupertino.dart';

class Deal {
  final String id;
  final String title;
  final List items;
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
        items: [
          "One Personal Pan Pizza,",
          " One Any Tin Drink,",
          " Two pieces any Appetizer",
        ],
        title: "Deal 1",
        serves: "1",
        price: 300),
    Deal(
        id: "d2",
        items: [
          "One Regular Pizza,",
          " Two Any Tin Drink,",
          " Four pieces any Appetizer",
        ],
        title: "Deal 2",
        serves: "2",
        price: 800),
    Deal(
        id: "d3",
        items: [
          "One Large Pizza,",
          " One 1.5 litre Drink,",
          " Eight pieces any Appetizer",
        ],
        title: "Deal 3",
        serves: "4",
        price: 1000),
    Deal(
        id: "d4",
        items: [
          "One Jumbo Pizza,",
          " Two 1.5 litre drinks,",
          "Sixteen pieces any Appetizer",
        ],
        title: "Deal 4",
        serves: "8",
        price: 1500),
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
