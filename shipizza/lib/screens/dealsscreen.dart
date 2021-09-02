import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shipizza/providers/appetizers.dart';
import 'package:shipizza/providers/colddrinks.dart';
import 'package:shipizza/providers/deal.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shipizza/providers/pizza_detail.dart';

class DealsScreen extends StatelessWidget {
  static const routeName = "/deals";
  var test = false;
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments;
    final dealData = Provider.of<DealProvider>(context).filteredwithid(id);
    final pizzaData = Provider.of<PizzaProvider>(context);
    final appetizerData = Provider.of<Appetizer_Provider>(context);
    final colddrinkData = Provider.of<ColdDrinkProvider>(context);
    final pizzaitems = pizzaData.pizzaitems;
 
    // print(dealData.title);


    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${dealData.title}",
        ),
        leading: IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
              
            }),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                  trailing: Text(
                    "${dealData.price}Rs",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  title: Row(
                    children: [
                      Text(
                        "${dealData.title}",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "(Serves: ${dealData.serves})",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${dealData.items['Pizza']!.values.toString().substring(1, dealData.items['Pizza']!.values.toString().length - 1)}  ${dealData.items['Pizza']!.keys.toString().substring(1, dealData.items['Pizza']!.keys.toString().length - 1)}",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "${dealData.items['ColdDrink']!.values.toString().substring(1, dealData.items['ColdDrink']!.values.toString().length - 1)}  ${dealData.items['ColdDrink']!.keys.toString().substring(1, dealData.items['ColdDrink']!.keys.toString().length - 1)}",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "${dealData.items['Appetizer']!.values.toString().substring(1, dealData.items['Appetizer']!.values.toString().length - 1)}  ${dealData.items['Appetizer']!.keys.toString().substring(1, dealData.items['Appetizer']!.keys.toString().length - 1)} Appetizer",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  )
                  //
                  ),
            ),
            
            ...colddrinkData.checkboxlisttilebuilder(),
            ...colddrinkData.checkboxlisttilebuilder()
        
          ],
        ),
      ),
    );
  }
}
