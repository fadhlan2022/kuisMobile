import 'dart:html';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Login page'),
          ),
          body: Column(
            children: [
              _usernameField(),
              _passwordField(),
              _loginButton(context),
            ],
          ),
        ),
      );
  }

  Widget _usernameField(){
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
      ),
      child: TextFormField(
        onChanged: (value){
          username = value;
        },
        enabled: true,
        decoration: const InputDecoration(
          hintText: 'Username',
          contentPadding: EdgeInsets.all(8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          // focusedBorder: OutlineInputBorder(
          //     borderRadius: BorderRadius.all(Radius.circular(8)),
          //     borderSide: BorderSide(
          //       color: Colors.green,
          //     ),
          //   ),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(8)),
          //   borderSide: BorderSide(
          //     color: Colors.red,
          //   ),
          // )
        ),
      ),
    );
  }

  Widget _passwordField(){
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: TextFormField(
        onChanged: (value){
          password = value;
        },
        obscureText: true,
        enabled: true,
        decoration: const InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.all(8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          // focusedBorder: OutlineInputBorder(
          //     borderRadius: BorderRadius.all(Radius.circular(8)),
          //     borderSide: BorderSide(
          //       color: Colors.green,
          //     ),
          //   ),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(8)),
          //   borderSide: BorderSide(
          //     color: Colors.red,
          //   ),
          // )
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        child: Text("Login"),
        onPressed: (){
          String text = "";
          if(username == "flutterMobile" && password == "flutter123"){
            text = "Login Success";
          }
          else{
            text = "Login Failed";
          }

          SnackBar snackBar = SnackBar(
            content: Text(text),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}
