import 'package:flutter/material.dart';

class ColdDrink {
  final String id;
  final String title;
  final  price;
  final String imageURL;

  const ColdDrink(
      {required this.imageURL,
      required this.id,
      required this.title,
      this.price = 200
});
}

class ColdDrinkProvider with ChangeNotifier {
  List _colddrinks = [
    ColdDrink(
      imageURL:
          "https://www.incimages.com/uploaded_files/image/1920x1080/getty_1005364128_389765.jpg",
      id: "cd1",
      title: "CocaCola",
    ),
    ColdDrink(
      imageURL:
          "https://image.shutterstock.com/image-photo/st-petersburg-russia-february-29-600w-1666349866.jpg",
      id: "cd2",
      title: "7UP",
    ),
    ColdDrink(
      imageURL:
          "https://cdnprod.mafretailproxy.com/sys-master-root/he8/h46/13976772739102/1747577_main.jpg_480Wx480H",
      id: "cd3",
      title: "Mountain Dew",
    )
  ];

  List get colddrinks {
    return [..._colddrinks];
  }

  List<bool> switchlisttilebool = [];
  var iter=0;
  List<Widget> checkboxlisttilebuilder(int value) {
    List<Widget> widget = [];

    for (int i = 0; i < _colddrinks.length; i++) {
      switchlisttilebool.add(false);
      widget.add(
        CheckboxListTile(
          
          value: switchlisttilebool[i],
          onChanged: (val) {
            for(int j=0;j<_colddrinks.length;j++)
            {
              if(i==j && value>iter && switchlisttilebool[i]!=true)
              {
                switchlisttilebool[i] = val!;
                iter++;
              }
              else if(i==j && switchlisttilebool[i]==true)
              {
                switchlisttilebool[i]=val!;
                iter--;
              }
              print(iter);
            }
            
            notifyListeners();
          },
          title: Text("${_colddrinks[i].title}"),
        ),
      );
    }
    return widget;
  }
  
  int ColdDrinkCount()
  {
    var colddrinkcount=0;
    for (var i=0;i<switchlisttilebool.length;i++)
  {
    if(switchlisttilebool[i]==true)
    {
      colddrinkcount++;
    }
   

  }
  return colddrinkcount;
  }
  
}

