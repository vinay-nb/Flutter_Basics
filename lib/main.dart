import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "vinay";
    double pi = 3.142;
    bool female = false;

    var days1 = "Friday";
    const pi1 = 3.142;
    return MaterialApp(
        home: HomePage()
      );
      
  }
}

