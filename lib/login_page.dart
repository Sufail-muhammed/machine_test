import 'package:flutter/material.dart';
import 'package:machinetest/homepage.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
            Image(image: AssetImage("assets/image/bg2.png"),width: double.infinity
              ,fit: BoxFit.cover,),
              Center(child: Padding(
                padding: const EdgeInsets.only(top: 95.0),
                child: Image(image: AssetImage("assets/image/logo.png"),height: 80,width: 80,),
              )),
                ],
        
            ),
            SizedBox(height: 20,),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 110.0),
                      child: Text('Login Or Register To Book \nYour Appointments',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(right: 344.0),
                      child: Text('Email',style: TextStyle(fontSize: 14),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextField(decoration: InputDecoration(hintText:'Enter your email',hintStyle: TextStyle(color: Colors.grey),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                    ),
                    SizedBox(height: 16,),
                    Padding(
                      padding: const EdgeInsets.only(right: 325.0),
                      child: Text('Password',style: TextStyle(fontSize: 14),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextField(decoration: InputDecoration(hintText:'Enter your Password',hintStyle: TextStyle(color: Colors.grey),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                    ),
                    SizedBox(height: 30,),
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
                    },
                      child: Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xff006837),),
                        child: Center(child: Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),)),
                      ),
                    ),
                    SizedBox(height: 200,),
                    Center(child: Text('By creating or logging into an account you are agreeing ',style: TextStyle(fontSize: 13),)),
                    Center(child: Text(' with our Terms and Conditions and Privacy Policy. ',style: TextStyle(color: Colors.blue,fontSize: 13),)),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
