import 'package:flutter/material.dart';
import 'package:task/models/fruity.dart';

class Item extends StatelessWidget {
  Item({required this.fru,super.key});
  Fruitss fru;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(fru.image!),
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(fru.name! ,style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(fru.details!)
                    ])
              ],
            ),
      
      ),
    );
  }
}
