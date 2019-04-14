import 'package:flutter/material.dart';

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

  DecorationImage _buildBackgroungImage() {
    return DecorationImage(
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
        image: AssetImage('assets/background.jpg'));
  }

  Widget _buildEmailTextField() {
    return TextField(
      onChanged: (value) {
        setState(() {
          email = value;
        });
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: 'E-Mail', filled: true, fillColor: Colors.white54),
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        obscureText: true,
        decoration: InputDecoration(
            labelText: 'Password', filled: true, fillColor: Colors.white54));
  }

  Widget _buildAcceptSwitch() {
    return SwitchListTile(
      value: acceptTerms,
      onChanged: (bool value) {
        setState(() {
          acceptTerms = value;
        });
      },
      title: Text('Accept Terms'),
    );
  }

  void _submitForm() {
    debugPrint(email);
    Navigator.pushReplacementNamed(context, '/products');
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
    return Container(
      decoration: BoxDecoration(
        image: _buildBackgroungImage(),
      ),
      padding: EdgeInsets.all(10),
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            width: targetWidth ,
            child: Column(
              children: <Widget>[
                _buildEmailTextField(),
                SizedBox(
                  height: 10,
                ),
                _buildPasswordTextField(),
                _buildAcceptSwitch(),
                SizedBox(
                  height: 10.0,
                ),
                FlatButton(
                    //color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: Text('LOGIN'),
                    onPressed: _submitForm)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
