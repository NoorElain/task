import 'package:flutter/material.dart';
  @override
  Widget chatItem(String name) => Container(
    color: Colors.blue,
    padding: const EdgeInsets.all(15),
    child: Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assetName'),
          radius: 20,
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          children: [
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              "hey buddy",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        )
      ],
    ),
  );

