import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade200,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Home Scren",
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(
          Icons.home,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {
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

              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Send Money"),
                      content: Text("Are you sure that you want to send money"),
                      actions: [],
                    );
                  });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.red,
            //       foregroundColor: Colors.white,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8),
            //           side: BorderSide(width: 5, color: Colors.green)),
            //
            //       // for setting padd everyside
            //       // padding: EdgeInsets.all(24),
            //       padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            //     ),
            //     onPressed: () {
            //       print("Pressed");
            //     },
            //     child: Text("Press Here")),
            // TextButton(
            //     style: TextButton.styleFrom(
            //       foregroundColor: Colors.green,
            //       textStyle: TextStyle(fontSize: 24),
            //     ),
            //     onPressed: () {},
            //     child: Text('TextButton')),
            // IconButton(
            //     onPressed: () {},
            //     icon: Icon(
            //       Icons.add_circle,
            //       color: Colors.orange,
            //     )),
            //
            // //single tap, long tap, ei type er jinish gula detect kore
            // GestureDetector(
            //
            //   onTap: (){
            //
            //     print("On Tap Detected");
            //   },
            //
            //   onDoubleTap: (){
            //     print("On Double Tap Detected");
            //   },
            //     child: Column(
            //
            //       children: [
            //         Text("scaffold"),
            //         Icon(Icons.add_circle),
            //
            //         Row(
            //
            //           children: [
            //             Text("This is a row")
            //           ],
            //         )
            //
            //       ],
            //     ),
            // ),
            //
            // //InkWell normally button na emon kichu ke button banate
            // //use kora hoy, jemon icon
            // InkWell(
            //
            //   splashColor: Colors.orange,
            //   radius: 30,
            //   borderRadius: BorderRadius.circular(36),
            //
            //   onTap: (){
            //
            //     print("On Tap Detected");
            //   },
            //
            //   onDoubleTap: (){
            //     print("On Double Tap Detected");
            //   },
            //   child: Column(
            //
            //     children: [
            //       Text("scaffold"),
            //       Icon(Icons.add_circle),
            //
            //       Row(
            //
            //         children: [
            //           Text("This is a row")
            //         ],
            //       )
            //
            //     ],
            //   ),
            // ),
            //
            // Padding(
            //   padding: EdgeInsets.all(15),
            //
            //   child: TextField(
            //
            //     //controller die textboxt er text set kora remove kora
            //     //egula kora jay
            //
            //     //controller: TextEditingController(),
            //     // onChanged: (value){
            //     //   print(value);
            //     // },
            //
            //
            //
            //     //border er moddhe enable false ar true kora jay
            //     //focused borcder,enabled border, disabled border
            //     //enabled: false,
            //
            //
            //   style: TextStyle(
            //
            //     fontSize: 24,
            //     color: Colors.orange,
            //   ),
            //
            //   decoration: InputDecoration(
            //
            //       hintText: "Enter your email",
            //
            //       hintStyle: TextStyle(
            //         fontSize: 24,
            //         fontWeight: FontWeight.w400,
            //       ),
            //
            //       labelText: "Email",
            //
            //       //label tar style modify kora jay eta die
            //       labelStyle: TextStyle(),
            //
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(8),
            //         borderSide: BorderSide(width: 4, color: Colors.red),
            //
            //       ) ,
            //
            //       focusedBorder: OutlineInputBorder(
            //         borderSide: BorderSide(width: 4, color: Colors.orange),
            //         borderRadius: BorderRadius.circular(14),
            //       ),
            //
            //       enabledBorder: OutlineInputBorder(
            //
            //         borderSide: BorderSide(width: 4, color: Colors.orange),
            //         borderRadius: BorderRadius.circular(14),
            //       ),
            //       disabledBorder: OutlineInputBorder(
            //
            //         borderSide: BorderSide(width: 4, color: Colors.orange),
            //         borderRadius: BorderRadius.circular(14),
            //       ),
            //
            //       fillColor: Colors.white,
            //       filled: true,
            //
            //       //prefix die aro beshi modify kora jay row column die
            //       //prefix: Column(),
            //
            //       prefixIcon: Icon(Icons.add),
            //       suffixIcon: Icon(Icons.remove_red_eye),
            //
            //     ),
            //   ),
            //
            // ),


            //Ekhane theke COntainer er cocde shuru
            //eita arekta page e likhle valo hobe visualize korte


            Container(
              width: 100,
              height: 100,

              decoration: BoxDecoration(
                color: Colors.green,

                //border radius shoho code korle border clr top, bottom, left, right e same dite hoy naile different dea jay
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.black, width: 2),
               //  border: Border(
               //
               //    top: BorderSide(color: Colors.black, width: 3),
               //    bottom: BorderSide(color: Colors.black, width: 2),
               //    left: BorderSide(color: Colors.black, width: 2),
               //    right: BorderSide(color: Colors.black, width: 2),
               //
               //  ),

                image: DecorationImage(

                  image: AssetImage('assets/img.png'),
                  fit: BoxFit.cover

                ),

                boxShadow: [

                  BoxShadow(

                    color: Colors.pink.withOpacity(0.8),
                    spreadRadius: 5,
                    blurRadius: 12,
                    offset: Offset(0,3),

                  )


                ]
              ),

              alignment: Alignment.center,
              child: Text("Sample"),

            )

          ],
        ),
      ),
    );
  }
}
