import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';
import 'package:my_app/widgets/MyDrawer.dart';
import 'package:my_app/widgets/item_widget.dart';

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
    final listBuilder = List.generate(8, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
          itemCount: listBuilder.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: listBuilder[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
