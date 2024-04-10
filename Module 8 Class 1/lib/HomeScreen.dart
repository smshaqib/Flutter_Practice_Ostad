import 'package:flutter/material.dart';
import 'package:untitled1/Profile.dart';


class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text("Home"),
      ),


      body: Center(

        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,

          children: [

            ElevatedButton(onPressed: (){
//context holo widget er locator, widger tree er moddhe koi ase widget ta eta pete help kore
              Navigator.push(context, MaterialPageRoute(builder: (context){

                return Profile(userName: "shaqib",);
              }
              )
              ).then((value){

                print(value);
              });

            }, child: Text("Back to Profile")),
            ElevatedButton(onPressed: (){

              Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context)=> Profile(userName: "shab",),

              )
              ).then((value){

                print(value);
              });

            }, child: Text("Go to setting")),

          ],
        ),

      ),
    );
  }


}

