import "package:flutter/material.dart";

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pop(context, "signup返回值");
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ],
          )),
    );
  }
}
