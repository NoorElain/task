import 'package:flutter/material.dart';
import 'package:task/componets/components.dart';
import 'package:task/models/chaty.dart';


class Chats extends StatelessWidget {
  List<chattt> names =
  [
    chattt(name: "user1"),
    chattt(name: "user2"),
    chattt(name: "user3"),
    chattt(name: "user4"),
    chattt(name: "user5"),
  ];

  Chats({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: const Text("Chat"),
      ),
      body: ListView.separated(
          itemBuilder: (context,idex) => chatItem( names[idex].name),
          separatorBuilder: (context,index) => SizedBox(height: 20,),
          itemCount: 5,
      ),
    );
  }
}
