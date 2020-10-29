import 'package:flutter/material.dart';
import 'package:randomscreens/screens/Transfer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Screens by Flutter',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home: Transfer(),
      // routes: {
      //   '/next': (context) => Home(),

      // },
    );
  }
}
