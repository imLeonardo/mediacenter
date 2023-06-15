import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var _counter = 0;

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
