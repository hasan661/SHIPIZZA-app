import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/providers/appetizers.dart';
import 'menustyle.dart';

class AppetizerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appetizerData = Provider.of<Appetizer_Provider>(context).appetizers;
    return MenuStyle(data: appetizerData, text: "APPETIZERS",);
  }
}

