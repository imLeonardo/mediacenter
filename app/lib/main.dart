// import "dart:ffi";

import 'package:mediacenter/page/error_page.dart';
import 'package:mediacenter/page/home_page.dart';
import 'package:mediacenter/page/signin_page.dart';
import 'package:mediacenter/page/signup_page.dart';
import 'package:mediacenter/page/setting_page.dart';
import "package:flutter/material.dart";

import "define.dart";

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MediaCenter",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      // home: const HomePage(title: "Home"),
      initialRoute: "/",
      routes: {
        "/": (context) {
          return const HomePage(title: "Home");
        },
        "/signin": (context) {
          return const SignInPage();
        },
        "/signup": (context) {
          return const SignUpPage();
        },
        "/setting": (context) {
          return const SettingPage();
        },
      },
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          String? routeName = settings.name;
          return const ErrorPage();
        });
      },
    );
  }
}
