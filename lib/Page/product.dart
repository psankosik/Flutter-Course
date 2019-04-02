import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Column(children: <Widget>[
        Image.asset('assets/food.jpg'),
        Container(padding: EdgeInsets.all(10.0), child: Text('Details')),
        Container(
          padding: EdgeInsets.all(10.0),
          child: RaisedButton(
            child: Text('Back'),
            color: Theme.of(context).accentColor,
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ]),
    );
  }
}
