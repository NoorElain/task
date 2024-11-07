import 'package:flutter/material.dart';
import 'package:task/componets/items.dart';
import 'package:task/models/fruity.dart';

class Fruits extends StatelessWidget {
  List<Fruitss> fruitList =
      [
        Fruitss(image: "asset/img_4.png", name: "Avocado", details: "healthy, nutritious, versatile superfood."),
        Fruitss(image: "asset/img_12.png", name: "Strawberry", details: "sweet, juicy, nutritious, antioxidant-rich."),
        Fruitss(image: "asset/img_13.png", name: "Grapes", details: "juicy, sweet, antioxidant-rich, hydrating fruit."),
        Fruitss(image: "asset/img_14.png", name: "Mangoe", details: "tropical, sweet, juicy, vibrant, delicious."),
        Fruitss(image: "asset/img_15.png", name: "Orange", details: "juicy, tangy, refreshing, vitamin C-rich."),
        Fruitss(image: "asset/img_16.png", name: "Apple", details: "crunchy, sweet, healthy, versatile, delicious."),
        Fruitss(image: "asset/img_17.png", name: "Berries", details: "small, sweet, nutritious, antioxidant-rich, flavorful."),
        Fruitss(image: "asset/img_4.png", name: "Avocado", details: "healthy, nutritious, versatile superfood."),
        Fruitss(image: "asset/img_12.png", name: "Strawberry", details: "sweet, juicy, nutritious, antioxidant-rich."),
        Fruitss(image: "asset/img_13.png", name: "Grapes", details: "juicy, sweet, antioxidant-rich, hydrating fruit."),
        Fruitss(image: "asset/img_14.png", name: "Mangoe", details: "tropical, sweet, juicy, vibrant, delicious."),
        Fruitss(image: "asset/img_15.png", name: "Orange", details: "juicy, tangy, refreshing, vitamin C-rich."),
        Fruitss(image: "asset/img_16.png", name: "Apple", details: "crunchy, sweet, healthy, versatile, delicious."),
        Fruitss(image: "asset/img_17.png", name: "Berries", details: "small, sweet, nutritious, antioxidant-rich, flavorful."),
      ];
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(
        "Profile fruits page",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      foregroundColor: Colors.black,
      backgroundColor: Color(0xff87CEFA),
    ),
    body:
      ListView.builder(
        itemCount: fruitList.length,
        itemBuilder: (context,index){
          return Item(fru: fruitList[index]);
        },
      )

    /*Container(
      child: const SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("asset/img_4.png"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Avocado",style: TextStyle(fontWeight: FontWeight.bold)),

                 Text("healthy, nutritious, versatile superfood.")
            ])
            /*Image.asset("asset/img_4.png",width: 150),
            Text("Avocados",style: TextStyle(fontWeight: FontWeight.bold)),
            Text("healthy, creamy, nutritious, versatile superfood.")*/
          ],
        
        ),
      )
    ),*/
  );
}
}