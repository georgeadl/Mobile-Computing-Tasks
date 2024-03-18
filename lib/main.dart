import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
              "Login Screen App",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Codeplayon",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 120),
               TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 10),
               TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Add forget password functionality here
                },
                child: const Text(
                  "Forget password",
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add login functionality here
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<OutlinedBorder> (
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    )
                  )
                ),
                child:const Padding(
                  padding:  EdgeInsets.all(10.0),
                  child:  Text(
                      "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                  ),
                  ),
                ),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text("Does not have account?"),
                  SizedBox(width: 20,),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
