import 'package:flutter/material.dart';

import 'grid_view.dart';
import 'home_page.dart';
import 'menu_demo.dart';

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
        backgroundColor: Colors.indigo,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("images/thanos2.jpg"),
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text("Home", style: TextStyle(fontSize: 20))),
                  ),
                  Text("Thanos:Infinity War",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            ListTile(
                title: Text("Home", style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.home, color: Colors.orange),
                onTap: () {
                  print("Home");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                }),
            ListTile(
                title: Text("MENU", style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.accessibility_outlined, color: Colors.green),
                onTap: () {
                  print("MENU");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MenuDemo()));
                }),
            ListTile(
              title: Text("Grid View", style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.api_outlined, color: Colors.green),
              onTap: () {
                print("Grid View");
                Navigator.push(context, MaterialPageRoute(builder: (context) => GridViewDemo()));
              },
            ),
            ListTile(
              title: Text("MENU-4", style: TextStyle(color: Colors.white)),
              leading:
                  Icon(Icons.important_devices_outlined, color: Colors.green),
              onTap: () {
                print("MENU-4");
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 20),
            Divider(color: Colors.grey),
            ListTile(
                title:
                    Text("Exit Program", style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.logout, color: Colors.red),
                onTap: () {
                  print("Exit Program");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                }),
          ],
        ),
      ),
    );
  }
}
