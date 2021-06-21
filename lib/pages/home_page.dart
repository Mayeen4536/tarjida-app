import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
       appBar: AppBar(
         title: Text('TARJIDA'),
         
       ),
      body: Center(
        child: Container(
          child: Text('An ecommerce app'),
        ),
      ),
      
    );
  }
}