import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shipizza/providers/cart.dart';

class CartScreen extends StatelessWidget {
  static const routeName = "/CartScreen";
  @override
  Widget build(BuildContext context) {
    List<Widget> cartscreen(var cartitems) {
      List<Widget> widget = [];

      for (var i = 0; i < cartitems.length; i++) {
        widget.add(
          Card(
            child: Column(
              children: [
                

                ListTile(
                  trailing: Text(
                    "${cartitems[i].price}Rs",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  title: Text(
                    "${cartitems[i].title}",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                 

                  //
                ),
              ],
            ),
          ),
        );
      }

      return widget;
    }

    final cartData = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [...cartscreen(cartData.cartitems)],
        ),
      ),
    );
  }
}
