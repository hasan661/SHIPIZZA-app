import 'package:flutter/cupertino.dart';

class Cart{
  final String name;
  final int price;
  
  Cart({required this.name, required this.price});

}

class CartProvider with ChangeNotifier{
  
  List _cartitems=[];

  List get cartitems
  {
    return [..._cartitems];
  }

  void addtocart(String name, int price)
  {
    _cartitems.add(Cart(name: name, price: price));
    notifyListeners();
  }
  num totalcalulation()
  {
    num totalprice=0;
  for (var i=0;i<_cartitems.length;i++)
  {
    // print(_cartitems[i].price.runtimeType);
    totalprice+=_cartitems[i].price;
    

  }
  return totalprice;



  }
  void clearcart()
  {
    _cartitems=[];
    notifyListeners();

  }

}