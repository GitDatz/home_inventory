import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:home_inventory/constants.dart';
import 'package:home_inventory/ui/pages/login_page.dart';
import 'package:home_inventory/ui/pages/main_page.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext _, AsyncSnapshot<User> snapshot) {
        if (snapshot.hasData) {
          return MainPage(title: MAIN_PAGE_TITLE);
        } else {
          return LoginPage(title: LOGIN_PAGE_TITLE);
        }
    });
  }
}