import 'package:flutter/material.dart';
import 'package:task/home.dart';
import 'package:task/login.dart';
import 'package:task/registration.dart';

class Registre extends StatefulWidget {
  Registre({super.key});

  @override
  State<Registre> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Registre> {

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(
          "Sign Up",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Color(0xff87CEFA),
        centerTitle: true,

          leading:
          Icon(Icons.account_circle, size: 30)
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("asset/img_1.png",width: 150),
              Container(
                child:  TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      labelText: ('Username : '),
                    )
                ),
                width: 300,
              ),
              const SizedBox(height: 30),
              Container(

                child:  TextFormField(
                    controller: pass,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      labelText: ('Password : '),
                    )
                ),
                width: 300,
              ),
              const SizedBox(height: 30),
              Container(

                child:  TextFormField(
                    controller: pass,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.verified ),
                      labelText: ('Confirm Password : '),
                    )
                ),
                width: 300,
              ),
              const SizedBox(height: 30),
              Container(

                child:  TextFormField(
                    controller: pass,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.phone_android),
                      labelText: ('Phone Number : '),
                    )
                ),
                width: 300,
              ),
              const SizedBox(height: 30),
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                if(email.text == "Noor Elain" && pass.text == "1234")
                {
                  print("Done ^_^!");
                }
                else
                {
                  print("Faild");
                }
              } , child: Text("Sign Up"),color: Color(0xff87CEFA),)
              ,

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account ?"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                  }, child: const Text("Log in"))
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}