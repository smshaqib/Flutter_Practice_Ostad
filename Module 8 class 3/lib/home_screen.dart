import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState()=>_HomeScreenState();
}

//state class for homescreen
class _HomeScreenState extends State<HomeScreen>{

  int cnt = 0;

  @override
  void initState() {

    super.initState();
    print('init');
  }

  @override
  void didChangeDependencies() {

    print('did changed dependency');
    super.didChangeDependencies();

  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {

    super.didUpdateWidget(oldWidget);
    print('disUpdate');
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build');

    return Scaffold(

      appBar: AppBar(

        title: const Text('home'),
        leading: const Icon(Icons.home),
        actions: const [
          Icon(Icons.add),
        ],

      ),

      body: Center(
        child: Text(cnt.toString()),
      ),

      floatingActionButton:  Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              cnt++;
              print(cnt);
              setState(() {
              });
            },

            child: const Icon(Icons.add),
          ),

          const SizedBox(width: 9,),

          FloatingActionButton(
            onPressed: () {
              cnt--;
              print(cnt);
              setState(() {
              });
            },



            child: const Icon(Icons.remove),
          ),
        ],
      ),


    );
  }


}