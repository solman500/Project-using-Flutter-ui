import 'package:flutter/material.dart';
// import 'package:project/presentation/Login/login.dart';
import 'package:project/presentation/layout/bottom_nav.dart';




class Myapp extends  StatelessWidget{
  const Myapp ({super.key});
  @override

  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: BottomNavLayout(),
      debugShowCheckedModeBanner: false,
    );
  }
}