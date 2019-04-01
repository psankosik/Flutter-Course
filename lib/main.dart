import 'package:flutter/material.dart';
import 'product_manager.dart';
//#5 commit modify product 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange, accentColor: Colors.deepPurple),
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: ProductManager()),
    );
  }
}
