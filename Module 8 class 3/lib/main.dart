import 'package:flutter/material.dart';
import 'package:untitled/splash.dart';

import 'home_screen.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Splash(),
    );
  }
}

// class HomeScreen extends StatelessWidget{
//
//   int cnt = 0;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//
//       appBar: AppBar(
//
//         title: Text('home'),
//         leading: Icon(Icons.home),
//         actions: [
//           Icon(Icons.add),
//         ],
//
//       ),
//
//       body: Center(
//         child: Text(cnt.toString()),
//       ),
//
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//
//           cnt++;
//           print(cnt);
//
//         },
//
//         child: Icon(Icons.add),
//       ),
//     );
//   }
//
// }

