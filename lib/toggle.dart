import 'package:flutter/material.dart';

class classer extends StatefulWidget {
  @override
  State<classer> createState() => _classer();
}

class _classer extends State<classer>{
  bool isToggeled = true;
  bool tex =true;
  bool isPressed=false;
  bool isLongPress = false;
  bool isDoubleTap = false;
  Color contanerColor = Colors.white;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toggel Buttom"),
      ),

      body: Center(
        child: GestureDetector(
          onTap: () {
            //isPressed = !isPressed;
                contanerColor = contanerColor == Colors.white? Colors.red : Colors.white;
            print('Tapped ^_^');
            setState(() {});
          },
          onDoubleTap: () {
            //isDoubleTap = !isDoubleTap;
              contanerColor = contanerColor == Colors.white? Colors.blue : Colors.white;
            print('Double Tapped ^_^');
            setState(() {});
          },
          onLongPress: () {
            contanerColor = contanerColor == Colors.white? Colors.orange : Colors.white;
            print('Long Pressed ^_^');
            setState(() {});
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: contanerColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Text(tex? "tex" : " "),
                Visibility(visible: tex,child: Text("data")),
                MaterialButton(
                  onPressed: () {
                    isToggeled =! isToggeled;
                    setState(() {});
                  },
                  child :Text(isToggeled ? 'ON' : 'OFF'),
                  color: isToggeled ? Colors.green : Colors.red,
                ),

                MaterialButton(
                  onPressed: () {
                    tex =! tex;
                    setState(() {});
                  },
                  child :Text(tex ? 'Hide' : 'Show'),
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}