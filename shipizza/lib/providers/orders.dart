import 'package:flutter/cupertino.dart';

class Order{
  final String name;
  final int price;
  
  Order({required this.name, required this.price});

}

class OrderProvider with ChangeNotifier{
  
  List _cartitems=[];

  List get cartitems
  {
    return [..._cartitems];
  }

  void addtocart(String name, int price)
  {
    _cartitems.add(Order(name: name, price: price));
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

}