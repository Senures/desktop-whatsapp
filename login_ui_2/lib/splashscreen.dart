import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_ui_2/home.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(_)=>Home()));
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Image.network("https://cdn-icons-png.flaticon.com/512/2111/2111728.png",width:100.0,),
            SizedBox(height:25.0,),
            Text("WhatsApp",style:TextStyle(color:Color(0xff00c853),fontSize:25.0),)
          ],
        ),
      ),
    );
  }
}