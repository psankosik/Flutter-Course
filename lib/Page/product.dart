import 'dart:async';

import 'package:flutter/material.dart';

import '../widgets/ui_elements/title_default.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double price;
  final String description;

  ProductPage(this.title, this.imageUrl, this.price, this.description);

  Widget _buildAddressPriceRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Union Square, San Francisco',
          style: TextStyle(fontFamily: 'Oswald', color: Colors.grey),
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              '|',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            )),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(5.0)),
          child: Text(
            '\$' + price.toString(),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back button pressed!');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Container(
            margin: EdgeInsets.all(3),
            padding: EdgeInsets.all(3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(imageUrl),
                Container(
                    padding: EdgeInsets.all(10.0), child: TitleDefault(title)),
                _buildAddressPriceRow(),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    description,
                    style: TextStyle(fontFamily: 'Oswald', color: Colors.grey),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    child: Text('DELETE',
                        style: TextStyle(
                            fontFamily: 'Oswald', color: Colors.white)),
                    onPressed: () => _showWarningDialog(context),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

_showWarningDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Are you sure?'),
          content: Text('This action cannot be undone!'),
          actions: <Widget>[
            FlatButton(
              child: Text('DISCARD'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text('CONTINUE'),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context, true);
              },
            ),
          ],
        );
      });
}
