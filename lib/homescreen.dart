
import 'dart:async';

import 'package:addtocart_hive/registerpage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState()=> _HomepageState();
}
class _HomepageState extends State<Homepage>{
  void initState(){
    Timer(const Duration(seconds: 5),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>  Registrationpage(),));
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body: Container(
        
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bgg.jpeg"),fit: BoxFit.cover)),
        child: Center(
          child: Lottie.asset("assets/images/anime.json",
          width: 250,
          height: 250,
          fit: BoxFit.fill),
          
        ) ,
      )
     
    );
  }
}
