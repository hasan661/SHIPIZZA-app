import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shipizza/providers/pizza_detail.dart';
import 'package:shipizza/screens/dealsscreen.dart';
import 'package:shipizza/screens/menu_screen.dart';

import './screens/shipizza_screen.dart';
import 'package:shipizza/providers/appetizers.dart';
import 'package:shipizza/providers/colddrinks.dart';
import 'package:shipizza/providers/deal.dart';
import 'package:shipizza/providers/dessert.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx)=> Appetizer_Provider(),),
        ChangeNotifierProvider(create: (ctx)=> ColdDrinkProvider(),),
        ChangeNotifierProvider(create: (ctx)=> DealProvider(),),
        ChangeNotifierProvider(create: (ctx)=> DessertProvider(),),
        ChangeNotifierProvider(create: (ctx)=>PizzaProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color.fromRGBO(135, 68, 39, 1),
          canvasColor: Color.fromRGBO(247, 243, 165, 1),
          
        ),
        routes: {
          '/':(ctx)=>ShipizzaScreen(),
          MenuScreen.routeName:(ctx)=> MenuScreen(),
          DealsScreen.routeName:(ctx)=>DealsScreen()
          
        },
      ),
    );
  }
}




