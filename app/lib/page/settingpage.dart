import "package:flutter/cupertino.dart";

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("CupertinoPageScaffold"),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CupertinoButton(
            color: CupertinoColors.activeBlue,
            child: const Text("ok"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
