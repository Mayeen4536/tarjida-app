import 'package:ecommerce_app/models/catalog.dart';
import 'package:ecommerce_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
        backgroundColor: Colors.indigo,
        drawer: MyDrawer(),
        appBar: AppBar(
            //  title: Center(child: Text('TARJIDA')),

            ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          
          child: ListView.builder(
              itemCount: dummyList.length,
              itemBuilder: (context, index) {
                return ItemWidget(item: dummyList[index],);
              },),
        ));
  }
}
