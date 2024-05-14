import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

//import 'package:device_preview/device_preview.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (context) {
        return MaterialApp(
          title: 'Flutter Demo',
          home: HomeView(),
        );
      },
    );
  }
}
class HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}