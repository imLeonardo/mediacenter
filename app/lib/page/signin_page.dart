import "package:flutter/material.dart";

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pop(context, "signin返回值");
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ],
          )),
    );
  }
}
