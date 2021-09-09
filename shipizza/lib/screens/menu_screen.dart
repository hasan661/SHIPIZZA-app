import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shipizza/screens/cartscreens.dart';
import 'package:shipizza/screens/menuitemscreen.dart';
import 'package:shipizza/screens/ordersscreen.dart';
// import 'package:shipizza/screens/cartscreen.dart';


// import 'package:provider/provider.dart';
// import '/providers/deal.dart';
// import '/providers/appetizers.dart';
// import '/providers/colddrinks.dart';
// import '/providers/dessert.dart';

// import '../providers/pizza_detail.dart';

class MenuScreen extends StatefulWidget {
  static const routeName = "/menu";

  @override
  _MenuScreenState createState() => _MenuScreenState();
}


class _MenuScreenState extends State<MenuScreen> {
  List<Map<String,dynamic>> _pages=[];
  int _selectedpageindex=0;
  void _selectpage(var index)
  {
    setState(() {
      _selectedpageindex=index;
    });
  }
   @override
  void initState() {
    // TODO: implement initState
    _pages=[
    {
      "page": MenuItemScreen(),
      "title":"Categories"

    },
    {
      "page": OrderScreen(),
      "title":"Your Favorites"
    }
    ,
    
  ];
  }

 
  @override
  Widget build(BuildContext context) {

   
    
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routename);
              },
              icon: Icon(Icons.shopping_cart))
        ],
        title: Container(
          width: double.infinity,
          child: Text(
            "MENU",
            style: GoogleFonts.anton(
                textStyle: TextStyle(
                    fontSize: 28, color: Theme.of(context).canvasColor)),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectpage,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_rounded),
          label: "Orders",
        )
      
        
      ],
      selectedItemColor: Theme.of(context).primaryColor,
      currentIndex: _selectedpageindex,),
      body: _pages[_selectedpageindex]['page']
     
    );
  }
}
