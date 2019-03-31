import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  List<String> products;

  Products(this.products){
    print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context ,int index) {
    return Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg'),
                      Text(products[index]) //receive with string and output with text
                    ],
                  ),
                );
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return ListView.builder(
      itemBuilder: _buildProductItem, //build item
      itemCount: products.length, //Item limit
    );
  }
}
