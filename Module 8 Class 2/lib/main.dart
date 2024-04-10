//Cupertino Design


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//
//   runApp(iosApp());
// }
//
// class iosApp extends StatelessWidget{
//   const iosApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     return  CupertinoApp(
//
//       home: HomePage(),
//     );
//
//   }
//
// }
//
// class HomePage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//
//     return CupertinoPageScaffold(
//       //ekhane appbar nai nav bar ase
//
//       navigationBar: CupertinoNavigationBar(
//
//         middle: Text('Home'),
//         trailing: CupertinoButton(
//
//           onPressed: (){},
//           child: Icon(CupertinoIcons.add),
//         ),
//       ),
//
//         child: Center(
//           child: Column(
//
//             mainAxisAlignment: MainAxisAlignment.center,
//
//
//             children: [
//               CupertinoActivityIndicator(
//                 radius: 24,
//               ),
//
//               CupertinoSwitch(value: false, onChanged: (value){})
//
//             ],
//           ),
//         )
//     );
//   }
//
//
// }

//THEME Data

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),

      //kono button er theme default vabe dea thake
      //eta change korte hole theme Data eer moddhe change
      //korte hobe

      theme: ThemeData(

        elevatedButtonTheme: ElevatedButtonThemeData(

          style: ElevatedButton.styleFrom(

              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )

          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyles.textButton,
        ),

        inputDecorationTheme: InputDecorationTheme(

          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(50),

          ),

          errorBorder: OutlineInputBorder(

            borderSide:  BorderSide(color: Colors.red)
          ),


        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
          elevation: 3,

          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )

        )
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(

                backgroundColor: Colors.purple,

                // 0xFF eita holo prefix
                foregroundColor: Color(0xFF26B65B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )
          )
        )
      ),
      themeMode: ThemeMode.dark,
    );
  }
}


class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            ElevatedButton(

                style: ButtonStyles.style,
                //ei style variabele ta nicher ekta custom class e likha
                onPressed: (){}, child: Text("tap to edit")
            ),
            ElevatedButton(

                style: ButtonStyles.style,
                onPressed: (){}, child: Text("tap to edit")
            ),
            ElevatedButton(

                style: ButtonStyles.style,
                onPressed: (){}, child: Text("tap to edit")
            ),
            TextButton(

                style: TextButton.styleFrom(

                  foregroundColor: Colors.green,

                ),

                onPressed: (){}, child: Text("tap to edit")
            ),

            TextField(),
            TextField(),

            /*ekhon kono sepecific button jodi
            change korte chai tahole oi button er
            style likhlei hobe oita override hoye jabe
            default theme o evabei kaj kore
             */


          ],
        ),
      ),


    );

  }


}

class ButtonStyles{

  static ButtonStyle style = ElevatedButton.styleFrom(

      backgroundColor: Colors.pink,
      foregroundColor: Colors.white,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      )

  );

  static ButtonStyle textButton = TextButton.styleFrom(

    textStyle: TextStyle(

      fontSize: 24,

    ),

    padding:  EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 16,
    )
  );
}