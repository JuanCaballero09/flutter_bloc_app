import 'package:flutter/material.dart';

import 'views/homeView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AppBlock",
      home: HomeViews()
    );
  }

}
