import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  const NavigatorDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Navigation"),
      ),
      body: Center(child: Text("MyApp")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("onPress");
        },
        child: Icon(Icons.access_alarm),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  "HEADER",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              decoration: BoxDecoration(color: Colors.indigo),
            ),
            ListTile(title: Text("MENU-1"),leading: Icon(Icons.home)),
            ListTile(title: Text("MENU-2"),leading: Icon(Icons.accessibility_outlined)),
            ListTile(title: Text("MENU-3"),leading: Icon(Icons.api_outlined)),
            ListTile(title: Text("MENU-4"),leading: Icon(Icons.important_devices_outlined)),
            ListTile(title: Text("MENU-5"),leading: Icon(Icons.settings_input_antenna_outlined)),
          ],
        ),
      ),
    );
  }
}
