import 'package:flutter/material.dart';

class Appetizers {
  final String id;
  final String title;
  final Map<String, int> price;
  final String imageURL;

  const Appetizers({
    required this.title,
    required this.id,
    required this.price,
    required this.imageURL,
  });
}

class Appetizer_Provider with ChangeNotifier {
  List _appetizers = [
    Appetizers(
      title: "Garlic Bread",
      id: "a1",
      price: {"2 pieces": 150, "4 pieces": 250, "8 pieces": 400},
      imageURL:
      "https://static.toiimg.com/thumb/62335227.cms?width=1200&height=900"
      
    ),
    Appetizers(
      title: "Cheesy Sticks",
      id: "a2",
      price: {"2 pieces": 150, "4 pieces": 250, "8 pieces": 400},
      imageURL:
          "https://static.toiimg.com/thumb/53537060.cms?imgsize=60703&width=800&height=800",
    ),
    Appetizers(
      title: "Chicken Wings",
      id: "a3",
      price: {"2 pieces": 150, "4 pieces": 250, "8 pieces": 400},
      imageURL:
          "https://hips.hearstapps.com/hmg-prod/images/190416-air-fryer-wings-137-1556204553.jpg",
    ),
    Appetizers(
      title: "Tacos",
      id: "a4",
      price: {"2 pieces": 200, "4 pieces": 400, "8 pieces": 600},
      imageURL:
          "https://www.wellplated.com/wp-content/uploads/2020/05/Best-Tempeh-Tacos-Recipe.jpg",
    )


    
  ];

  List<Appetizers> get appetizers{
    return [..._appetizers];

  }

  List<bool> test = [];
  dynamic checkboxlisttilebuilder() {
    List<Widget> widget = [];
    for (var i = 0; i < _appetizers.length; i++) {
      test.add(false);
      widget.add(
        CheckboxListTile(
         
          value: test[i],
          onChanged: (val) {
            for(var j=0;j<_appetizers.length;j++)
            {
              if(i==j)
              {
                test[j]=val!;

              }
              else{
                test[j]=false;
              }
            }
            //  test[i] = val!;
            notifyListeners();
          },
          title: Text("${_appetizers[i].title}"),
        ),
      );
    }
    return widget;
  }
  void nullvalue()
  {
    test=[];
    // iter=0;
    notifyListeners();

  }

}
