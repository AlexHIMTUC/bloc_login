import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget{
    Widget build(context){
      return Column(
        children: [
          emailInput(),
          passwordInput(),
          submitBtn()
        ],
      );
    }

    Widget emailInput(){
        return const TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "email@example.com"
          ),
        );
    }

    Widget passwordInput(){
      return const TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "enter your password here"
        ),
      );
    }

    Widget submitBtn(){
      return ElevatedButton(onPressed: () {

      }, child: const Text("Submit"));
    }
}