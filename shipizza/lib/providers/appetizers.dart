import 'package:flutter/material.dart';

class Appetizers {
  final String id;
  final String title;
  final price;
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
      price: 150,
      imageURL:
      "https://static.toiimg.com/thumb/62335227.cms?width=1200&height=900"
      
    ),
    Appetizers(
      title: "Cheesy Sticks",
      id: "a2",
      price: 150,
      imageURL:
          "https://static.toiimg.com/thumb/53537060.cms?imgsize=60703&width=800&height=800",
    ),
    Appetizers(
      title: "Chicken Wings",
      id: "a3",
      price: 150,
      imageURL:
          "https://hips.hearstapps.com/hmg-prod/images/190416-air-fryer-wings-137-1556204553.jpg",
    ),
    Appetizers(
      title: "Tacos",
      id: "a4",
      price: 150,
      imageURL:
          "https://www.wellplated.com/wp-content/uploads/2020/05/Best-Tempeh-Tacos-Recipe.jpg",
    )


    
  ];

  List<Appetizers> get appetizers{
    
    return [..._appetizers];

  }
  List<bool> switchlisttilebool = [];
  List<Widget> checkboxlisttilebuilder() {
    
    List<Widget> widget = [];
    
    

    for (int i = 0; i < _appetizers.length; i++) {
      switchlisttilebool.add(false);
      widget.add(
        CheckboxListTile(
          value: switchlisttilebool[i],
          onChanged: (val) {
            for(int j=0;j<_appetizers.length;j++)
            {
              if(i==j)
              {
                switchlisttilebool[j]=val!;
              }
              else{
                switchlisttilebool[j]=false;
              }

            }
           
            
            notifyListeners();
          },
          title: Text("${_appetizers[i].title}"),
        ),
      );
      
    }
    return widget;
  }
  
  int AppetizerCount()
  {
    var appetizercount=0;
    for (var i=0;i<switchlisttilebool.length;i++)
  {
    if(switchlisttilebool[i]==true)
    {
      appetizercount++;
    }
   

  }
  return appetizercount;
  }

  

}
