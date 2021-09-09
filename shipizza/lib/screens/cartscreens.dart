import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shipizza/providers/cart.dart';
import 'package:shipizza/providers/orders.dart';

class CartScreen extends StatelessWidget {
  static const routename = "/Cart";
  @override
  Widget build(BuildContext context) {
    final cartDatas = Provider.of<CartProvider>(context);
    final cartData = cartDatas.cartitems;
    final totalprice = cartDatas.totalcalulation();
    final orderData = Provider.of<OrderProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Cart",
          style: GoogleFonts.anton(
              textStyle: TextStyle(
                  fontSize: 28, color: Theme.of(context).canvasColor)),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Price"),
                CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text("${totalprice}")),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 20,
                  child: ListTile(
                    title: Text("${cartData[index].name}"),
                    subtitle: Text("${cartData[index].price}"),
                  ),
                );
              },
              itemCount: cartData.length,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              for (int i = 0; i < cartData.length; i++) {
                orderData.addtocart(cartData[i].name, cartData[i].price);
              }
              cartDatas.clearcart();
            },
            child: Text("Place Order"),
          )
        ],
      ),
    );
  }
}
