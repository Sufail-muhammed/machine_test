import 'dart:async';

import 'package:flutter/material.dart';
import 'package:machinetest/login_page.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),()=>
         Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),)));


}
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body:
      SizedBox(
height: MediaQuery.of(context).size.height,
width: MediaQuery.of(context).size.width,
        child: Image(image: AssetImage("assets/image/bg1.png"),fit: BoxFit.cover,),
      ),
    );
  }
}
