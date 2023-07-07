import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title}) : _title = title, super(key: key);

  final String _title;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var _counter = 0;

  void incrementCounter() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _counter++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "You have pushed the button this many times:",
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            IconButton(
              onPressed: () async {
                var ret = await Navigator.pushNamed(context, "/signup");
                if (kDebugMode) {
                  print("路由返回值:$ret");
                }
              },
              icon: const Icon(Icons.sign_language),
              tooltip: "Sign Up",
            ),
            IconButton(
              onPressed: () async {
                var ret = await Navigator.pushNamed(context, "/setting");
                if (kDebugMode) {
                  print("路由返回值:$ret");
                }
              },
              icon: const Icon(Icons.settings),
              tooltip: "Open Setting",
            ),
            ElevatedButton(
              onPressed: () async {
                print("ElevatedButton");
                var ret = await Navigator.pushNamed(context, "/signin");
                if (kDebugMode) {
                  print("路由返回值:$ret");
                }
              },
              child: const Text("ElevatedButton"),
            ),
            TextButton(
              onPressed: () {
                print("TextButton");
              },
              child: const Text("TextButton"),
            ),
            OutlinedButton(
              onPressed: () {
                print("OutlinedButton");
              },
              child: const Text("OutlinedButton"),
            ),
            OutlinedButton.icon(
              onPressed: () {
                print("send");
              },
              icon: const Icon(Icons.send),
              label: const Text("send"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: "Increment",
        child: const Icon(Icons.add),
      ),
    );
  }
}
