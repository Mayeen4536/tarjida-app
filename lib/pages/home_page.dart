import 'package:flutter/material.dart';

import 'drawer.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.indigo,
      drawer: MyDrawer(),
       appBar: AppBar(
        //  title: Center(child: Text('TARJIDA')),
         
       ),
      body: Center(
        child: Container(
          child: Text('An ecommerce app'),
        ),
      ),
      
    );
  }
}