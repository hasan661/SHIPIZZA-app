import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/providers/pizza_detail.dart';
import 'menustyle.dart';

class PizzaItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pizzaData = Provider.of<PizzaProvider>(context).pizzaitems;
    return MenuStyle(data: pizzaData, text: "PIZZA FLAVOURS",);
    // final appetizerData = Provider.of<Appetizer_Provider>(context).appetizers;
    // return MenuStyle(data: appetizerData);
  }
}