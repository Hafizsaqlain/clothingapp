import 'dart:async';


import 'package:clotingapp/welcomescreen.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

// ignore: camel_case_types
class _splashscreenState extends State<splashscreen> {
  @override
  
  void initState (){
    Timer(const Duration(seconds: 3),(){
      Navigator.push(context, 
      MaterialPageRoute(builder: (context){
        return  const WelcomeScreen();
      }));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.white ,
    body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/SPLAshscreeen.jpg'),height: 350,),
            
            Text(
              'F-fashion.',
              style: TextStyle(fontSize: 32,
               fontWeight: FontWeight.bold,
               backgroundColor: Colors.white,color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              'Clothes Store Mobile App',
              style: TextStyle(fontSize: 18,color: Color(0xffB46465)),
            ),
      
          ]
        )
     )
      
      
    );
  }
}