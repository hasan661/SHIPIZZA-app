import 'package:flutter/material.dart';

import 'package:shipizza/providers/cart.dart';
import 'package:provider/provider.dart';
import 'package:shipizza/providers/orders.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orderData=Provider.of<OrderProvider>(context).cartitems;
    return Column(
        children: [
          
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 20,
                  child: ListTile(
                    title: Text("${orderData[index].name}"),
                    subtitle: Text("${orderData[index].price}"),
                  ),
                );
              },
              itemCount: orderData.length,
            ),
          ),
        ],
      );
  }
}