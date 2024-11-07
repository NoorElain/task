import 'package:flutter/material.dart';
import 'package:task/counter_provider.dart';
import 'package:task/login.dart';
import 'package:task/chat.dart';
import 'package:task/fruits.dart';
import 'package:provider/provider.dart';
import 'package:task/toggle.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Color(0xff87CEFA),
        centerTitle: true,

        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Fruits()));
            },
            icon: Icon(Icons.account_circle, size: 30),
          ),
          SizedBox(width: 20), // Keeps spacing between icons
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Noor Elain"),
              decoration: BoxDecoration(color: Color(0xff87CEFA)),
            ),
            ListTile(
              title: Text("My Profile"),
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text("Chats"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Chats()));
              },
              leading: Icon(Icons.edit),
            ),
            ListTile(
              title: Text("settings"),
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text("Log out"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));              },


              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),

      body: Container(
        child: Column(
          children: [
            Consumer(
              builder: (BuildContext context,CounterProvider value, Widget? child) => Text(
                "${value.num}",
                style: TextStyle(fontSize: 40),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer(
                  builder: (BuildContext context,CounterProvider value, Widget? child) => FloatingActionButton(
                    onPressed: () {
                      value.increment();
                    },
                    child: Icon(Icons.add, size: 25),
                    backgroundColor:
                    Color(0xff87CEFA), // Change to your desired color
                  ),
                ),
                SizedBox(width: 50),
                Consumer(
                  builder: (BuildContext context,CounterProvider value, Widget? child) => FloatingActionButton(
                    onPressed: () {
                      value.refresh();
                    },
                    child: Icon(Icons.refresh, size: 25),
                    backgroundColor: Color(0xff87CEFA),
                  ),
                ),
                SizedBox(width: 50),
                Consumer(
                  builder: (BuildContext context,CounterProvider value, Widget? child) => FloatingActionButton(
                    onPressed: () {
                      value.decrement();
                    },
                    child: Icon(Icons.remove, size: 25),
                    backgroundColor: Color(0xff87CEFA),
                  ),
                ),
              ],
            ),
            Image.asset("asset/img_1.png",width: 150),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}



