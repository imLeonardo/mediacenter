import "package:flutter/material.dart";

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error"),
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pop(context, "error返回值");
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ],
          )),
    );
  }
}
