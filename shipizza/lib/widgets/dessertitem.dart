import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/providers/dessert.dart';
import 'menustyle.dart';

class DessertItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dessertData = Provider.of<DessertProvider>(context).desserts;
    return MenuStyle(data: dessertData, text: "DESSERTS",scrollphysics: NeverScrollableScrollPhysics(),);
  }
}