
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "shaqib's first written app",
      home: Home(),

      //To Hide The Debug Messege
      debugShowCheckedModeBanner: false,
    );
  }
}

// column = vertically
// Row = Horizontally

class Home extends StatefulWidget {


  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> studentList = [

    'shaqib',
    'rakib',
    'abir',
    'hasan',
    'mahmud',
    'tmu',
    'nahid',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen.shade200,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            "Home Scren",
            style: TextStyle(color: Colors.white),
          ),
          leading: const Icon(
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
                      return const AlertDialog(
                        title: Text("Send Money"),
                        content:
                            Text("Are you sure that you want to send money"),
                        actions: [],
                      );
                    });
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),

        //example 1

        // body: SingleChildScrollView(
        //
        //   child: Column(
        //
        //
        //     children: [
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //       Text("asdfasd"),
        //     ],
        //   ),
        // )

      //example 2
      // body: ListView.builder(
      //
      //   itemCount: studentList.length,
      //
      //   itemBuilder: (context,index){
      //
      //     //return Text('${index+1}', style: TextStyle(fontSize: 12),);
      //     return Padding(
      //
      //       padding: EdgeInsets.all(8),
      //
      //       child: Column(
      //
      //         children: [
      //           Text(studentList[index], style: TextStyle(),),
      //
      //           Divider(),
      //         ],
      //
      //
      //       ),
      //
      //     );
      //
      //   },
      //
      // ),

      //example 3

      // body: ListView.separated(
      //
      //   itemCount: studentList.length,
      //
      //   itemBuilder: (context,index){
      //
      //     //return Text('${index+1}', style: TextStyle(fontSize: 12),);
      //     return Padding(
      //
      //       padding: EdgeInsets.all(8),
      //
      //       child: Row(
      //
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //
      //         children: [
      //           Text(studentList[index], style: TextStyle(),),
      //
      //           Text(studentList[index], style: TextStyle(),),
      //         ],
      //       ),
      //
      //     );
      //
      //   },
      //
      //   separatorBuilder: (context,index){
      //
      //     return Divider(
      //       height: 21,
      //       thickness: 2,
      //       endIndent: 15,
      //       indent: 8,
      //       color: Colors.pink,
      //
      //     );
      //
      //   },
      //
      // ),


      //example 4

      // body: GridView(
      //
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
      //
      //   children: [
      //
      //     Text('1'),
      //     Text('2'),
      //     Text('3'),
      //     Text('4'),
      //     Text('5'),
      //     Text('6'),
      //     Text('7'),
      //     Text('8'),
      //
      //
      //   ],
      //
      // ),

      //example 5

      // body: GridView.builder(
      //
      //   itemCount: studentList.length,
      //
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     childAspectRatio: 3,
      //     mainAxisSpacing: 10,
      //     crossAxisSpacing: 10,
      //
      //   ),
      //
      //   itemBuilder: (context,index){
      //
      //     return Column(
      //
      //       children: [
      //         Text('Roll - ${index+1}'),
      //         Text(studentList[index]),
      //       ],
      //
      //     );
      //
      //   },
      // ),



      //example 6;

      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //
      //       ListView.builder(
      //
      //           itemCount: studentList.length,
      //
      //           itemBuilder: (context,index) {
      //             //return Text('${index+1}', style: TextStyle(fontSize: 12),);
      //             return Padding(
      //
      //               padding: EdgeInsets.all(8),
      //
      //               child: Column(
      //
      //                 children: [
      //                   Text(studentList[index], style: TextStyle(),),
      //
      //                   Divider(),
      //                 ],
      //
      //
      //               ),
      //             );
      //           }
      //       ),
      //       SizedBox(
      //
      //         height: 200,
      //
      //         child: GridView.builder(
      //
      //             shrinkWrap: true,
      //
      //             itemCount: 100,
      //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //               crossAxisCount: 2, childAspectRatio: 4,
      //
      //               mainAxisSpacing: 10,
      //               crossAxisSpacing: 10,
      //
      //
      //             ),
      //
      //             itemBuilder: (context, index){
      //
      //
      //               return Column(
      //
      //                 children: [
      //
      //                   Text('Roll - ${index}'),
      //                   Text(studentList[index])
      //
      //                 ],
      //
      //               );
      //
      //             }
      //
      //
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            ListView.builder(

                shrinkWrap: true,
                primary: true,

                itemCount: studentList.length,

                itemBuilder: (context,index) {
                  //return Text('${index+1}', style: TextStyle(fontSize: 12),);
                  return Padding(

                    padding: const EdgeInsets.all(8.0),

                    child: Column(

                      children: [
                        Text(studentList[index], style: const TextStyle(),),

                        const Divider(),
                      ],


                    ),
                  );
                }
            ),


            GridView.builder(

              shrinkWrap: true,
              primary: true,

            itemCount: studentList.length,

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,

            ),

            itemBuilder: (context,index){

              return Column(

                children: [
                  Text('Roll - ${index+1}'),
                  Text(studentList[index]),
                ],

              );

            },
          ),
          ]
        ),
      ),

    );
  }
}
