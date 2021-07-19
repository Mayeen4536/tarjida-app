import 'package:ecommerce_app/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({ Key key, @required this.item }) : assert(item != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: StadiumBorder(),
      color: Colors.white,
      elevation: 1.9,
      child: ListTile(
        leading: Image.asset(item.image),
        title: Text(item.name,
        textScaleFactor: 1.4,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600
        ),),
        subtitle: Text('${item.desc}...'),
        trailing: Text('\BDT ${item.price}',
        textScaleFactor: 1.2,
        style: TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.w500
        ),
        ),
    
      ),
    );
  }
}