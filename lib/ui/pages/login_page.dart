import 'package:flutter/material.dart';
import 'package:home_inventory/utils/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

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
        controller: _emailController,
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
      ),
    );
  }

  Widget _passwordField() {
    return Padding(
      padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
      child: TextFormField(
        controller: _passwordController,
        obscureText: true,
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
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
      child: SizedBox(
        height: LOGIN_BUTTON_HEIGHT,
        width: double.infinity,
        child: ElevatedButton(
          child: Text(LOGIN_BUTTON_TEXT),
          onPressed: () {
            _login();
          }
        )
      )
    );
  }

  void _login() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}