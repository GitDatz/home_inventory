import 'package:flutter/material.dart';
import 'package:home_inventory/constants.dart';
import 'package:home_inventory/ui/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _usernameField(),
              _passwordField(),
              _loginButton(context)
            ],
          )
      ),
    );
  }

  Widget _usernameField() {
    return Padding(
      padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
      child: TextFormField(
        autofocus: false,
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.mail,
            color: Colors.blueGrey,
          ),
          hintText: EMAIL_HINT,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.zero
          )
        ),
        validator: (value) => value.isEmpty ? EMAIL_VALIDATOR_ERROR : null,
        onSaved: (value) => _email = value.trim(),
      ),
    );
  }

  Widget _passwordField() {
    return Padding(
      padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
      child: TextFormField(
        autofocus: false,
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.blueGrey,
          ),
          hintText: PASSWORD_HINT,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.zero
          )
        ),
        validator: (value) => value.isEmpty ? PASSWORD_VALIDATOR_ERROR : null,
        onSaved: (value) => _password = value.trim(),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
      child: SizedBox(
        height: 50.0,
        width: double.infinity,
        child: ElevatedButton(
          child: Text(LOGIN_BUTTON_TEXT),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => MainPage(title: MAIN_PAGE_TITLE)));
          }
        )
      )
    );
  }
}