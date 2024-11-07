import 'package:flutter/material.dart';

class typeText extends StatefulWidget {
  const typeText({super.key});

  @override
  State<typeText> createState() => _typeTextState();
}

class _typeTextState extends State<typeText> {
  String words = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example"),
      ),
      body: Container(
        width: double.infinity,
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  words = value;
                  setState(() {});
                },
                decoration: InputDecoration(
                  label: Text("Text", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                ),
              ),
              Container(child: Text("You Typed : ${words}"))
            ],
          )
      ),
    );
  }
}