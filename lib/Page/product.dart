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
        Text('On the Product Page'),
        RaisedButton(
          child: Text('Back'),
          onPressed: () => Navigator.pop(context),
        ),
      ]),
    );
  }
}
