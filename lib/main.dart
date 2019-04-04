import 'package:flutter/material.dart';
import './Page/products.dart';
import './Page/auth.dart';

//#10 commit: 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      home: AuthPage(),
    );
  }
}
