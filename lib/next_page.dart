import 'package:bio_tree_app/third_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _counter = 0;

  void _decrementCounter() {
    setState(() {
      _counter--;
      print("The counter has been increased to " + _counter.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Screen #2",
            ),
            Text(
              'Press button to subtract your value:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
       floatingActionButton: Stack(
         children: [
           Positioned(
             right:10,
             bottom: 30,
             child: FloatingActionButton(
               heroTag: 'next page',
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => ThirdPage(title: 'Third page',)),
                 );
               },
               child: Icon(
                 Icons.arrow_right,
                 size: 40,
               ),
             ),
           ),
           Positioned(
               right: 150,
               bottom: 200,
               child: FloatingActionButton(
                 heroTag: 'subtract increment',
                 onPressed: _decrementCounter,
                 child: Icon(
                   Icons.accessible_forward,
                   size: 40,
                 ),
               )
           )
         ],
       ),
    );
  }
}