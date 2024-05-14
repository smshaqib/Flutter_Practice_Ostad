import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(

      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }

}


class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    //MediaQuery

    print(MediaQuery.of(context).size);
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).orientation);
    print(MediaQuery.of(context).devicePixelRatio);
    print(MediaQuery.of(context).displayFeatures);


    print(MediaQuery.displayFeaturesOf(context));
    print(MediaQuery.sizeOf(context));

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Home"),
      ),

      // body: Center(
      //
      //   //wrap row er moto widget
      //
      //   child: Wrap(
      //
      //     alignment: WrapAlignment.center,
      //     crossAxisAlignment: WrapCrossAlignment.start,
      //
      //     spacing: 4,
      //
      //     children: [
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //     ],
      //   ),
      //
      // ),


      //LAYOUT BUILDER
      // body: LayoutBuilder(
      //   builder: (BuildContext context, BoxConstraints constraints) {
      //
      //     if(constraints.maxWidth<400){
      //       return const Center(child: Text('Mobile'));
      //     }
      //     else if(constraints.maxWidth<600){
      //         return const Center(child: Text('Tablet'));
      //     }
      //     else if(constraints.maxWidth<1200){
      //       return const Center(child: Text('Laptop'));
      //     }
      //     return Center(
      //       child: Text(constraints.maxWidth.toString()),
      //     );
      //
      //   },
      //
      //
      // ),

      body: OrientationBuilder(

        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.landscape) {
            return Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.yellow,
            );
          }
          else {
            return Container(

              width: double.infinity,
              height: double.infinity,
              color: Colors.red,

            );
          }
        }

      )


    );

  }


}