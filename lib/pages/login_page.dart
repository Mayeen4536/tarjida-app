import 'package:ecommerce_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.indigo[400],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Image.asset(
                  'assets/images/tarjidalogomain2.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Welcome $name',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 25.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Enter Username', labelText: 'Username'),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Enter Password', labelText: 'Password'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },

                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton?40 : 110,
                        height: 40,
                        alignment: Alignment.center,
                        
                        child: changeButton? Icon(Icons.done, color: Colors.white,) : Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: changeButton? Colors.green : Colors.blue,
                          borderRadius: BorderRadius.circular(changeButton?40 : 10),
                          
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     },
                    //     child: Text('Login'),
                    //     style: TextButton.styleFrom()),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
