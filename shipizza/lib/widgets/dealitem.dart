import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shipizza/screens/dealsscreen.dart';

import '/providers/deal.dart';

class DealItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dealData = Provider.of<DealProvider>(context);
    final deallist = dealData.deal;
    print(deallist);
    dynamic dealbuilder() {
      List<Widget> widgets = [];
      for (var index = 0; index < deallist.length; index++) {
        widgets.add(
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(DealsScreen.routeName, arguments: deallist[index].id);
            },
            child: Card(
              child: ListTile(
                  trailing: Text(
                    "${deallist[index].price}Rs",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  title: Row(
                    // mainAxisAlignment :MainAxisAlignment,
                    children: [
                      Text(
                        "${deallist[index].title}",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "(Serves: ${deallist[index].serves})",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    "${dealData.listinoneline(deallist, index)}",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                  //
                  ),
            ),
          ),
        );
      }
      return widgets;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child: Text(
              "Deals",
              style: GoogleFonts.anton(
                  fontSize: 28, color: Theme.of(context).canvasColor),
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            children: dealbuilder(),
          )
        ],
      ),
    );
  }
}
