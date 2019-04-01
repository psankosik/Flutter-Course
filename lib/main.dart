import 'package:flutter/material.dart';
import './Page/home__page.dart';
//import 'product_manager.dart';

//#5 commit

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange, accentColor: Colors.deepPurple),
      home: HomePage()
    );
  }
}
