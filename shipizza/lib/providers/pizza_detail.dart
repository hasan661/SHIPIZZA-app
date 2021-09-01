import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pizza {
  final String id;
  final String imageURL;
  final Map price;
  final String title;
  final String detail;

  const Pizza(
      {required this.detail,
      required this.title,
      required this.id,
      required this.imageURL,
      required this.price});
}

class PizzaProvider with ChangeNotifier {
  List<Pizza> _pizzaitems = [
    Pizza(
      detail: "All Cheese For Our Cheese Lovers",
      title: "Cheese Pizza",
      id: "p1",
      imageURL:
          "https://www.minutemanpizza.com/wp-content/uploads/2021/07/minutemanpizza-How-To-Make-Cheese-Pizza-Quick-And-Easy-Tips.jpg",
      price: {
        "Small": 200,
        "Regular": 500,
        "Large": 800,
        "Jumbo": 1200,
      },
    ),
    Pizza(
      detail: "For All The Vegetrians Out There",
      title: "Veggie Pizza",
      id: "p2",
      imageURL:
          "https://www.tasteofhome.com/wp-content/uploads/2018/01/Whole-Wheat-Veggie-Pizza_EXPS_HCKA19_12558_C10_13_5b-2.jpg?fit=700,1024",
      price: {
        "Small": 200,
        "Regular": 500,
        "Large": 800,
        "Jumbo": 1200,
      },
    ),
    Pizza(
      detail: "Who Is Ready For Some Beef Pepperoni",
      title: "Peperonni Pizza",
      id: "p3",
      imageURL:
          "https://www.simplyrecipes.com/thmb/HQJVIRwkySb-QiYv6saC9dEjU5A=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2019__09__easy-pepperoni-pizza-lead-4-82c60893fcad4ade906a8a9f59b8da9d.jpg",
      price: {
        "Small": 200,
        "Regular": 500,
        "Large": 800,
        "Jumbo": 1200,
      },
    ),
    Pizza(
      detail: "Its All Beefy And Juicy",
      title: "Beef Pizza",
      id: "p4",
      imageURL:
          "https://images.eatsmarter.com/sites/default/files/styles/576x432/public/ground-beef-pizza-519336.jpg",
      price: {
        "Small": 200,
        "Regular": 500,
        "Large": 800,
        "Jumbo": 1200,
      },
    ),
    Pizza(
      detail: "Marghaitta",
      title: "Margherita Pizza",
      id: "p5",
      imageURL:
          "https://static.toiimg.com/thumb/56868564.cms?imgsize=1948751&width=509&height=340",
      price: {
        "Small": 200,
        "Regular": 500,
        "Large": 800,
        "Jumbo": 1200,
      },
    ),
    Pizza(
      detail: "BBQ Chicken with our famous BBQ sauce",
      title: "BBQ Chicken Pizza",
      id: "p6",
      imageURL:
          "https://www.bakedbyanintrovert.com/wp-content/uploads/2021/01/BBQ-Chicken-Pizza-6-720x1080.jpg",
      price: {
        "Small": 200,
        "Regular": 500,
        "Large": 800,
        "Jumbo": 1200,
      },
    ),
    Pizza(
      detail: "So You Love Hawaiian? Here Is Your Pizza Then",
      title: "Hawaiian Pizza",
      id: "p7",
      imageURL:
          "https://cdn.sallysbakingaddiction.com/wp-content/uploads/2014/08/It-doesnt-get-much-better-than-Homemade-Hawaiian-Pizza.-Tropical-paradise-for-dinner-2.jpg",
      price: {
        "Small": 200,
        "Regular": 500,
        "Large": 800,
        "Jumbo": 1200,
      },
    ),
    Pizza(
      detail: "Buffalo Meat with Buffalo Sauce",
      title: "Buffalo Pizza",
      id: "p8",
      imageURL:
          "https://embed.widencdn.net/img/mccormick/bd0cjaiorw/840x840px/Frank's%20RedHot%20Buffalo%20Chicken%20Pizza_2019-05-24_TSUCALAS_%209618.jpg?crop=true&q=80&r=90&u=o2hyef",
      price: {
        "Small": 200,
        "Regular": 500,
        "Large": 800,
        "Jumbo": 1200,
      },
    ),
    Pizza(
        detail: "Chicken And Beef Mixed With Some Spice",
        title: "Supreme Pizza",
        id: "p9",
        imageURL:
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/190226-buffalo-chicken-pizza-370-1552084943.jpg?crop=0.668xw:1.00xh;0.209xw,0.00255xh&resize=980:*",
        price: {
          "Small": 200,
          "Regular": 500,
          "Large": 800,
          "Jumbo": 1200,
        }),
    Pizza(
      detail: "Spicy Spicy Spicy",
      title: "The Works Pizza",
      id: "p10",
      imageURL:
          "https://hips.hearstapps.com/del.h-cdn.co/assets/16/15/1600x1066/gallery-1460731281-delish-skillet-pizza-the-works-1.jpg?resize=980:*",
      price: {
        "Small": 200,
        "Regular": 500,
        "Large": 800,
        "Jumbo": 1200,
      },
    ),
  ];

  List<Pizza> get pizzaitems {
    return [..._pizzaitems];
  }

  List<bool> test = [];
  var iter = 0;
  dynamic checkboxlisttilebuilder(var id) {
    List<Widget> widget = [];

    for (var i = 0; i < _pizzaitems.length; i++) {
      test.add(false);
      widget.add(
        CheckboxListTile(
          value: test[i],
          onChanged: (val) {
            for (var j = 0; j < _pizzaitems.length; j++) {
              if (i == j && iter < int.parse(id) && test[i]!=true) {
                test[j] = val!;
                
                iter++;
                // notifyListeners();
              } else if (test[j] == true && i == j) {
                test[j] = val!;
                iter--;
                // notifyListeners();
              }
              // print(iter);
              // else{
              //   test[j]=false;
              // }
              notifyListeners();
            }
          },
          title: Text("${_pizzaitems[i].title}"),
          
        ),
      );
    }
    return widget;
  }
  void nullvalue()
  {
    test=[];
    iter=0;
    notifyListeners();

  }
}
