import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "vinay";
    double pi = 3.142;
    bool female = false;

    var days1 = "Friday";
    const pi1 = 3.142;
    return Scaffold(
          appBar: AppBar(
            title: Text('Catalogue'),
          ),
          body: Center(
            child: Container(
              child: Text("Hello $days by $name on $days1 $pi1")
            )
          ),
          drawer: Drawer(),
      );

  }
}