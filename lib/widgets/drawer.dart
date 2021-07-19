import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: 
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.grey),
              accountName: Text("Mayeen Sajid") ,accountEmail: Text("mayeen64@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://media-exp3.licdn.com/dms/image/C5603AQFrEBOE4AWuvw/profile-displayphoto-shrink_800_800/0/1625947371978?e=1632355200&v=beta&t=SF5X6t6a0-H9A9iWaRox2YGYmknRCXdugXPkralGOaM"), ),)),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text('Home',
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text('My Account',
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.bag,
                color: Colors.white,
              ),
              title: Text('My Orders',
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),),
            ),
          ],
          ),
      ),
    );
  }
}