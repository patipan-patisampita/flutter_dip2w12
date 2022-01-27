import 'package:flutter/material.dart';

import 'home_page.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Grid View"),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 10,
              crossAxisSpacing: 10,
            ),
            children: [
              InkWell(
                  onTap: () {
                    print("MENU");
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home,size: 50,color: Colors.white),
                      Text("Home"),
                    ],
                  ),
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
