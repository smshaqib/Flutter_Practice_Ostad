import 'package:flutter/material.dart';

void main() {

  runApp(
      MyApp()
  );
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

    // Write whatever you awnt in screen
    return Scaffold(
      //backgroundColor: Colors.blue,
      body: Center(
        //
        // child: Text(
        //
        //     "Hello World, This is my coding skills today for the moasd a da dad w dasd asdasd sth sadasdawdas",
        //     textAlign: TextAlign.center,
        //
        //     maxLines: 2,
        //
        //     style: TextStyle(
        //
        //       fontSize: 24,
        //       fontWeight: FontWeight.w600,
        //       backgroundColor: Colors.deepOrange,
        //       color: Colors.black,
        //       overflow: TextOverflow.ellipsis,
        //   )
        // ),
        
        //icons and images showing
        
       // child: Icon(Icons.android, size: 43,color: Colors.pink,),
         child: Image.network(
             'https://images.prothomalo.com/prothomalo-bangla%2F2024-03%2Feeb0a828-6a5a-4972-9f19-8ee3b8682b6c%2FRussia_s_Moscow.webp?rect=0%2C0%2C770%2C513&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=1.0',

           width: 200,
           height: 400,
           fit: BoxFit.scaleDown,

         ),
        
        //from local
        
       // child: Image.asset('images/img.png', width: 300, height: 400, fit: BoxFit.scaleDown,),
      ),
    );

  }
}