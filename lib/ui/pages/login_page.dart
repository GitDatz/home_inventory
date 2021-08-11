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
            ElevatedButton(
              child: Text("Login"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage(title: MAIN_PAGE_TITLE)));
              }
            )
          ],
        ),
      ),
    );
  }
}