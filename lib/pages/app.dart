import 'package:flutter/material.dart';
import 'navigator_demo.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      title: 'Flutter Navigator',
      home: NavigatorDemo(),
    );
  }
}

