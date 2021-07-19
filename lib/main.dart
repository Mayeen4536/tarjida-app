import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/pages/login_page.dart';
import 'package:ecommerce_app/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      themeMode: ThemeMode.dark,
      
      darkTheme: ThemeData(primarySwatch: Colors.indigo,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.indigo,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        // textTheme: Theme.of(context).textTheme,
      )
      ),
      
      initialRoute: "MyRoutes.homeRoute",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),

      }
    );
  }
}
