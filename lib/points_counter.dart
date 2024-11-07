import 'package:flutter/material.dart';

class Counts extends StatefulWidget {
  const Counts({super.key});

  @override
  State<Counts> createState() => _CountsState();
}

class _CountsState extends State<Counts> {
  int countA = 0;
  int countB = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Points Counter"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Column(
                    children: [
                      Text("Team A" ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      Text("$countA" ,style: TextStyle(fontSize: 100)),
                      MaterialButton(onPressed: () {
                        setState(() {
                          countA++;
                        });
                      } ,child: Text("Add 1 point  " ,style: TextStyle(fontSize: 25),),color: Colors.orange,),
                      MaterialButton(onPressed: () {
                        setState(() {
                          countA+=2;
                        });
                      } ,child: Text("Add 2 points" ,style: TextStyle(fontSize: 25),),color: Colors.orange,),
                      MaterialButton(onPressed: () {
                        setState(() {
                          countA +=3;
                        });
                      } ,child: Text("Add 3 points" ,style: TextStyle(fontSize: 25),),color: Colors.orange,),
                    ],
                  ),
                ),
                Container(
                  height: 350,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: VerticalDivider(
                        color: Colors.black,
                      ),
                    )
                ),
                Column(
                  children: [
                    Text("Team B" ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    Text("$countB" ,style: TextStyle(fontSize: 100)),
                    MaterialButton(onPressed: () {
                      setState(() {
                        countB++;
                      });
                    } ,child: Text("Add 1 point  " ,style: TextStyle(fontSize: 25),),color: Colors.orange,),
                    MaterialButton(onPressed: () {
                      setState(() {
                        countB+=2;
                      });
                    } ,child: Text("Add 2 points" ,style: TextStyle(fontSize: 25),),color: Colors.orange,),
                    MaterialButton(onPressed: () {
                      setState(() {
                        countB+=3;
                      });
                    } ,child: Text("Add 3 points" ,style: TextStyle(fontSize: 25),),color: Colors.orange,),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(onPressed: () {
                  setState(() {
                    countA=0;
                    countB=0;
                  });
                } ,child: Text("Reset" ,style: TextStyle(fontSize: 25),),color: Colors.orange,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
