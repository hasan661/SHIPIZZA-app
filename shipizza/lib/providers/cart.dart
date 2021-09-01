import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final price;
  var totalprice;

  CartItem(
      {required this.id,
      required this.price,
      required this.title,
      this.totalprice = 0.0});
}

class CartProvider with ChangeNotifier {
  var a=0;
  final _cartitems=[];

  void additems(int price, String title)
  {
    _cartitems.add(
      CartItem(id: "c$a", title: title, price: price),
    );
    a++;
    notifyListeners();
  }

  List get cartitems
  {
    return [..._cartitems];

  }


}
