import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shipizza/providers/appetizers.dart';
import 'package:shipizza/providers/colddrinks.dart';
import 'package:shipizza/providers/deal.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shipizza/providers/pizza_detail.dart';

class DealsScreen extends StatelessWidget {
  static const routeName = "/deals";
   bool test=false;
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments;
    final dealData = Provider.of<DealProvider>(context).filteredwithid(id);
    final pizzaData=Provider.of<PizzaProvider>(context);
    final appetizerData=Provider.of<Appetizer_Provider>(context);
    final colddrinkData=Provider.of<ColdDrinkProvider>(context);
    // print(dealData.title);
    Widget headingbuilder(var text)
    {
      return
      Padding(
               padding: EdgeInsets.all(8),
               child: Container(
                
                width: double.infinity,
                color: Theme.of(context).primaryColor,
                child: Text(
                  text,
                  style: GoogleFonts.anton(
                      fontSize: 28, color: Theme.of(context).canvasColor),
                  textAlign: TextAlign.center,
                ),
                       ),
             );
    }
   


    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${dealData.title}",
        ),

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
                        // mainAxisAlignment :MainAxisAlignment,
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
                      subtitle: Text(
                        "${dealData.items.join()}",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
                      //
                      ),
             ),
             headingbuilder("Choose Your Appetizer"),
             ...appetizerData.checkboxlisttilebuilder(),
            headingbuilder("Choose Your Flavour"),
             ...pizzaData.checkboxlisttilebuilder(),
             headingbuilder("Choose Your Drinks"),
             ...colddrinkData.checkboxlisttilebuilder()
             
           ],
        ),
      ),
    );
  }
}
