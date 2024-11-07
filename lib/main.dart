import 'package:flutter/material.dart';
import 'package:task/counter_provider.dart';
import 'package:task/login.dart';
import 'package:task/toggle.dart';
import 'package:task/typed.dart';
import 'package:task/points_counter.dart';
import 'home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      // Application theme data, you can set the colors for the application as
      // you want
      // A widget which will be started on application startup
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
          create: (context) => CounterProvider(),
          child: typeText()),
    );
  }
}
