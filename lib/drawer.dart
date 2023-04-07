import 'package:carsbee_app/home.dart';
import 'package:carsbee_app/profilescreen.dart';
import 'package:carsbee_app/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: ListView(
        children: [
                    UserAccountsDrawerHeader(
          accountName:Text("Dineshram") , accountEmail: Text("dram@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network("https://www.shutterstock.com/image-vector/man-character-face-avatar-glasses-260nw-562077406.jpg",
              width: 90,
              height: 90,
              fit: BoxFit.cover,
              ),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/old-brick-black-color-wall-260nw-1605128917.webp"),
            fit: BoxFit.cover
            )
          ),
          ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("profile"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileNav() ,));
              },
            ),
             ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
              },),
               ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),));
              },),
              ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),));
              },),
               ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
              },),
        ],
      ),
    );
  }
}