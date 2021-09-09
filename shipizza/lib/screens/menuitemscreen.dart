import 'package:flutter/material.dart';

import 'package:shipizza/widgets/colddrinkitem.dart';
import 'package:shipizza/widgets/dessertitem.dart';
import 'package:shipizza/widgets/pizzaitem.dart';

import '/widgets/appetizeritem.dart';
import '/widgets/dealitem.dart';
class MenuItemScreen extends StatelessWidget {
  const MenuItemScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
       SingleChildScrollView(
        child: Column(
          children: [
            DealItem(),
            AppetizerItem(),
            PizzaItem(),
            DessertItem(),
            ColdrinkItem()
          ],
        ),
      
    );
  }
}