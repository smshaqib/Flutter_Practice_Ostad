


import 'package:flutter/material.dart';
import 'package:untitled1/HomeScreen.dart';

class Setting extends StatelessWidget{
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.cyan.shade50,
      appBar: AppBar(
        title: Text("Setting"),
      ),


      body: Center(

        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,

          children: [

            ElevatedButton(onPressed: (){}, child: Text("Back to previous")),
            ElevatedButton(onPressed: (){

              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeScreen()), (route) => false);
            }, child: Text("Go to HomeScreen")),

          ],
        ),

      ),
    );
  }


}