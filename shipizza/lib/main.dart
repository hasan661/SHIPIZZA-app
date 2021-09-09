import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shipizza/providers/cart.dart';
import 'package:shipizza/providers/orders.dart';

import 'package:shipizza/providers/pizza_detail.dart';
import 'package:shipizza/screens/cartscreens.dart';

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
    final textTheme=Theme.of(context).textTheme;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx)=> Appetizer_Provider(),),
        ChangeNotifierProvider(create: (ctx)=> ColdDrinkProvider(),),
        ChangeNotifierProvider(create: (ctx)=> DealProvider(),),
        ChangeNotifierProvider(create: (ctx)=> DessertProvider(),),
        ChangeNotifierProvider(create: (ctx)=>PizzaProvider(),),
        ChangeNotifierProvider(create: (ctx)=>CartProvider(),),
        ChangeNotifierProvider(create: (ctx)=>OrderProvider(),),
       
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.pink,
          canvasColor: Colors.white,

          
        ),
        routes: {
          '/':(ctx)=>ShipizzaScreen(),
          MenuScreen.routeName:(ctx)=> MenuScreen(),
          DealsScreen.routeName:(ctx)=>DealsScreen(),
          CartScreen.routename:(ctx)=>CartScreen()
          
          
        },
      ),
    );
  }
}




