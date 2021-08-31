import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/providers/colddrinks.dart';
import 'menustyle.dart';

class ColdrinkItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final coldrinkData = Provider.of<ColdDrinkProvider>(context).colddrinks;
    return MenuStyle(data: coldrinkData, text: "Cold Drinks",);
    // final appetizerData = Provider.of<Appetizer_Provider>(context).appetizers;
    // return MenuStyle(data: appetizerData);
  }
}