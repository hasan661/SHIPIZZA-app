import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shipizza/providers/cart.dart';

class MenuStyle extends StatelessWidget {
  const MenuStyle(
      {Key? key, required this.data, required this.text, this.scrollphysics})
      : super(key: key);

  final List data;
  final text;
  final scrollphysics;

  @override
  Widget build(BuildContext context) {
    void modalbottomsheet(
        BuildContext ctx, var imageurl, var title, var price, var cartData) {
      showBottomSheet(
        context: ctx,
        builder: (ctx) {
          return Container(
            width: double.infinity,
            height: 400,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  height: 250,
                  width: 350,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      imageurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text("$title",
                    style: GoogleFonts.anton(
                        fontSize: 19, color: Theme.of(context).primaryColor)),
                // Row(children: [
                ElevatedButton(
                  onPressed: () {
                    cartData.addtocart(title, price);
                  },
                  child: Text(
                    "Add to Cart",
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor),
                )
              ],
            ),
          );
        },
      );
    }

    final cartData = Provider.of<CartProvider>(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 6, 8, 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              child: Text(
                text,
                style: GoogleFonts.anton(
                    fontSize: 28, color: Theme.of(context).canvasColor),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 190,
              child: ListView.builder(
                physics: scrollphysics,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      GridTile(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 5, left: 2, right: 2),
                          child: GestureDetector(
                            onTap: () {
                              modalbottomsheet(
                                  context,
                                  data[index].imageURL,
                                  data[index].title,
                                  data[index].price,
                                  cartData);
                            },
                            child: Image.network(
                              data[index].imageURL,
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        data[index].title,
                        style: GoogleFonts.anton(
                            fontSize: 19,
                            color: Theme.of(context).primaryColor),
                        // textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
                itemCount: data.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
