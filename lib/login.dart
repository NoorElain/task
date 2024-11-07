import 'package:flutter/material.dart';
import 'package:task/home.dart';
import 'package:task/registration.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Login> {

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(
          "Login",
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
                     prefixIcon: Icon(Icons.email),
                     labelText: ('Email : '),
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
                      prefixIcon: Icon(Icons.email),
                      labelText: ('Password : '),
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
              } , child: Text("Login"),color: Color(0xff87CEFA),)
            ,

                  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account ?"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Registre()));
                  }, child: const Text("Sign up"))
                ],
              )

              ],
          ),
        ),
      ),
    );
  }
}