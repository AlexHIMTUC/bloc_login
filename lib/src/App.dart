import 'package:bloc_login/src/screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'screens/LoginScreen.dart';

class App extends StatelessWidget{

    Widget build(context){
      return MaterialApp(
        title: "Login Screen",
        home: LoginScreen(),
      );
    }
}