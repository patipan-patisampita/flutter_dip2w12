import 'package:flutter/material.dart';

class MenuDemo extends StatelessWidget {
  const MenuDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("MENU-2"),
        ),
        body: Text("MENU-2"),
      ),
    );
  }
}
