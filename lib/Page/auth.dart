import 'package:flutter/material.dart';

import './products.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: AuthPageView());
  }
}

class AuthPageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageViewState();
  }
}

class _AuthPageViewState extends State<AuthPageView> {
  String email;
  String password;
  bool acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.dstATop),
                image: AssetImage('assets/background.jpg'))),
        padding: EdgeInsets.all(10),
        child: Center(
            child: SingleChildScrollView(
                child: Column(
          children: <Widget>[
            TextField(
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'E-Mail', filled: true, fillColor: Colors.white54),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.white54)),
            SwitchListTile(
              value: acceptTerms,
              onChanged: (bool value) {
                setState(() {
                  acceptTerms = value;
                });
              },
              title: Text('Accept Terms'),
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              child: Text('LOGIN'),
              onPressed: () {
                debugPrint(email);
                Navigator.pushReplacementNamed(context, '/products');
              },
            ),
          ],
        ))));
  }
}
