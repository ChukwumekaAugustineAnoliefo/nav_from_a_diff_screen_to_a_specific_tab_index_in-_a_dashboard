import 'package:flutter/material.dart';
import 'package:nav_to_specific_tab_from_a_diff_screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tab Bar Widget with Specific Index',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          const MyHomePage(title: 'Flutter Tab Bar Widget with Specific Index'),
    );
  }
}
