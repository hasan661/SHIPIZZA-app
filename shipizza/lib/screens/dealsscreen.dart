import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shipizza/providers/deal.dart';

class DealsScreen extends StatelessWidget {
  static const routeName = "/deals";
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments;
    final dealData = Provider.of<DealProvider>(context).filteredwithid(id);
    // print(dealData.title);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${dealData.title}",
        ),

      ),
      // body: ,
    );
  }
}
