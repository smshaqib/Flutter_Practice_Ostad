import 'package:flutter/material.dart';
import 'package:untitled/home_screen.dart';

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SplashState();

}

class _SplashState extends State<Splash>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: ElevatedButton(
          onPressed: (){

            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          },

          child: Text('Go to honme'),
        ),
      ),

    );
  }




}