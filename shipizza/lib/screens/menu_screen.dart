import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shipizza/widgets/colddrinkitem.dart';
import 'package:shipizza/widgets/dessertitem.dart';
import 'package:shipizza/widgets/pizzaitem.dart';

import '/widgets/appetizeritem.dart';
import '/widgets/dealitem.dart';

// import 'package:provider/provider.dart';
// import '/providers/deal.dart';
// import '/providers/appetizers.dart';
// import '/providers/colddrinks.dart';
// import '/providers/dessert.dart';

// import '../providers/pizza_detail.dart';


class MenuScreen extends StatelessWidget {
  static const routeName = "/menu";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          child: Text(
            "MENU",
            style: GoogleFonts.anton(
                fontSize: 28, color: Theme.of(context).canvasColor),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              DealItem(),
              AppetizerItem(),
              PizzaItem(), 
              DessertItem(),
              ColdrinkItem()
              
        
            ],
          ),
      ),
      
    );
  }
}
