import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Home(),

    );
  }

}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: AppBar(

        backgroundColor: Colors.green,
        title: Text("Home"),

      ),


      body: Column(

        children: [

          // Flexible(
          //
          //   flex: 2,
          //
          //   fit: FlexFit.tight,
          //
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.red,
          //   ),
          // ),
          //
          // Expanded(
          //   flex: 2,
          //
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.yellow,
          //   ),
          // ),
          //
          //
          // Expanded(
          //
          //   flex: 5,
          //
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.green,
          //   ),
          // )

          // SizedBox(
          //
          //   width: 300,
          //   height: 200,
          //
          //   child: ColoredBox(
          //
          //     color: Colors.red,
          //
          //   ),
          //
          // ),

          // SizedBox(
          //
          //   width: MediaQuery.sizeOf(context).width,
          //   height: 500,
          //
          //   child: FractionallySizedBox(
          //
          //     heightFactor: 0.9,
          //     widthFactor: 0.8,
          //
          //     child: Container(
          //       color: Colors.red,
          //     ),
          //
          //   ),
          // )

          AspectRatio(

            aspectRatio: 2/2, child: Container(color: Colors.red,),)

        ],

      ),


    );
  }


}