import 'package:flutter/material.dart';
import 'package:my_app/widgets/MyDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
        title: Text('Catalog'),
      ),
      body: Center(
          child: Container(child: Text("Hello $days by $name on $days1 $pi1"))),
      drawer: MyDrawer(),
    );
  }
}
