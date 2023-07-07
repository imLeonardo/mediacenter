import "package:flutter/material.dart";

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);
  var _unameController = new TextEditingController();
  var _passwdController = new TextEditingController();

  void initState() {
    _unameController.addListener(() {
      print(_unameController.text);
    });
    _passwdController.addListener(() {
      print(_passwdController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: const Center(
          child: Column(
            children: <Widget>[
              TextField(
                autofocus: true,
                controller: _unameController,
                decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名或邮箱",
                    prefixIcon: Icon(Icons.person)
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "密码",
                    hintText: "您的登录密码",
                    prefixIcon: Icon(Icons.lock)
                ),
                obscureText: true,
              ),
            ],
          )),
    );
  }
}
