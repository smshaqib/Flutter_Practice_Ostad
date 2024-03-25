
import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return MaterialApp(

        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        color: Colors.green,
        debugShowCheckedModeBanner: false,

        home: HomeActivity()

    );
  }
}

class HomeActivity extends StatelessWidget {



  MySnackBar(message, context){


    return ScaffoldMessenger.of(context).showSnackBar(

      SnackBar(content: Text(message), duration: Duration(microseconds: 600),)

    );

  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("Inventory"),
        titleSpacing: 60,
        centerTitle: true,
        toolbarHeight: 100,
        toolbarOpacity: 0.5,
        elevation: 50,
        backgroundColor: Colors.green,

        actions: [

          IconButton(onPressed: () {MySnackBar("I am Comment", context);}, icon: Icon(Icons.comment),),
          IconButton(onPressed: () {MySnackBar("I am search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {MySnackBar("I am setting", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {MySnackBar("I am Email", context);}, icon: Icon(Icons.email)),

        ],

      ),

      floatingActionButton: FloatingActionButton(

        elevation: 100,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: (){
          MySnackBar("I am floating action button", context);
        },
      ),

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: 1,

        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "Contrac"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),

        ],

        onTap: (int index){

          if(index==0){

            MySnackBar("Iam home bottom Menu", context);
          }
          if(index==1){

            MySnackBar("Iam contract bottom Menu", context);
          }
          if(index==2){

            MySnackBar("Iam profile bottom Menu", context);
          }

        }

      ),

      drawer: Drawer(

        //list view er vetore sob item children

        child: ListView(

          children: [
            DrawerHeader(

              //userAccountsDrawer Special type of header for child.
              //chile: Text("text") evabeo dea jay
              child: UserAccountsDrawerHeader(


                  
                  decoration: BoxDecoration(color: Colors.white),
                  accountName: Text("SM Shaqib", style: TextStyle(color: Colors.blue),),
                  accountEmail: Text("smshaqib@gmail.com", style: TextStyle(color: Colors.blue),),
                  currentAccountPicture: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3eFRPDUsITnmJVYO_s1JCHp6BtIqSU8OtJifOj4xIf_cvt5jIS6jWIhYjlcKtUXYlFGM&usqp=CAU'),
                  
                onDetailsPressed: (){MySnackBar("This Is Profile", context);},

                ),

            ),

            ListTile(

              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {MySnackBar("Home", context);},

            ),

            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contract"),
              onTap: () {MySnackBar("Contract", context);},
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {MySnackBar("Profile", context);},
            ),

            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              onTap: () {MySnackBar("Email", context);},
            ),

            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
              onTap: () {MySnackBar("Phone", context);},
            ),
          ],
        ),

      ),

      body: Text("hello",),


      endDrawer: Drawer(

        //list view er vetore sob item children

        child: ListView(

          children: [
            DrawerHeader(

              //userAccountsDrawer Special type of header for child.
              //chile: Text("text") evabeo dea jay
              child: UserAccountsDrawerHeader(



                decoration: BoxDecoration(color: Colors.white),
                accountName: Text("SM Shaqib", style: TextStyle(color: Colors.blue),),
                accountEmail: Text("smshaqib@gmail.com", style: TextStyle(color: Colors.blue),),
                currentAccountPicture: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3eFRPDUsITnmJVYO_s1JCHp6BtIqSU8OtJifOj4xIf_cvt5jIS6jWIhYjlcKtUXYlFGM&usqp=CAU'),

                onDetailsPressed: (){MySnackBar("This Is Profile", context);},

              ),

            ),

            ListTile(

              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {MySnackBar("Home", context);},

            ),

            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contract"),
              onTap: () {MySnackBar("Contract", context);},
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {MySnackBar("Profile", context);},
            ),

            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              onTap: () {MySnackBar("Email", context);},
            ),

            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
              onTap: () {MySnackBar("Phone", context);},
            ),
          ],
        ),

      ),


    );

  }
}
