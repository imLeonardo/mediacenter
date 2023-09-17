// import "dart:ffi";

import 'package:mediacenter/page/error.dart';
import 'package:mediacenter/page/home.dart';
import 'package:mediacenter/page/signin.dart';
import 'package:mediacenter/page/signup.dart';
import 'package:mediacenter/page/setting.dart';
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
          return SignInPage();
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
