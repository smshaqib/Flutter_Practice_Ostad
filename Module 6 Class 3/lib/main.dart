import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: "shaqib's first written app",
      home: Home(),

      //To Hide The Debug Messege
      debugShowCheckedModeBanner: false,

    );

  }

}

// column = vertically
// Row = Horizontally


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      backgroundColor: Colors.lightGreen.shade200,

      appBar: AppBar(

        backgroundColor: Colors.green,

        title: Text(
          "Home Scren",
           style: TextStyle(
              color: Colors.white
          ),
        ),

        leading: Icon(Icons.home, color: Colors.white,),
        
        actions: [
          

          IconButton(onPressed: () {

//Scaffold Messeges
            // ScaffoldMessenger.of(context).showSnackBar(
            //
            //   SnackBar(
            //     content: Text(
            //       "Your money has been Transfered",
            //       style: TextStyle(color: Colors.black),
            //     ),
            //
            //     backgroundColor: Colors.green,
            //     duration: Duration(seconds: 1),
            //   ),
            //
            // );
//end of scaffold messeges

          showDialog(context: context, builder: (context){

            return AlertDialog(

                title: Text("Send Money"),
                content: Text("Are you sure that you want to send money"),

                actions: [

                ],

            );

          });

          }, icon: Icon(Icons.add),),
          
        ],
        
      ),

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          mainAxisSize: MainAxisSize.min,
        

          children: [

            Text("Hello"),
            Text("World haha saa dawd asd"),
            Text("From"),
            Text("Shaqib"),


            Row(


              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,


              children: [

                Text("Greeting"),
                Text("From"),
                Text("Shaqib"),

                Column(

                  children: [

                    Row(


                      children: [

                        Icon(Icons.date_range),
                        Text("data no"),
                      ],


                    ),

                    Text('12-12-12'),

                  ],


                )
              ],

            )

          ],

        ),
      ),
    );

  }



}