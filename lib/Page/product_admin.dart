import 'package:flutter/material.dart';
import './products.dart';

class ProductAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Choose"),
            ),
            ListTile(title: Text("All Product"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProductsPage()));
              },)
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Manage Product"),
      ),
      body: Center(
        child: Text(
          "Manage Product",
        ),
      ),
    );
  }
}

