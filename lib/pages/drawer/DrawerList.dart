import 'package:all4home/pages/drawer/AboutUs.dart';
import 'package:all4home/pages/drawer/ContactUs.dart';
import 'package:all4home/pages/drawer/LogOut.dart';
import 'package:all4home/pages/drawer/My_Profile.dart';
import 'package:all4home/pages/drawer/Settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(218, 245, 213, 0.949),
      child: Column(
        children: [
          DrawerHeader(
            child: Text(
              "ALL 4 HOME",
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/All4Home Logo.png"),
              ),
            ),
          ),

          //my profile
          ListTile(
            leading: Icon(Icons.person),
            title: Text("M Y  P R O F I L E"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return My_Profile();
                  },
                ),
              );
            },
          ),

          //SETTINGS
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("S E T T I N G S"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return Settings();
                  },
                ),
              );
            },
          ),

          //ABOUT US
          ListTile(
            leading: Icon(Icons.info_outline_rounded),
            title: Text("A B O U T  U S"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return AboutUs();
                  },
                ),
              );
            },
          ),

          //CONTACT US
          ListTile(
            leading: Icon(Icons.phone_android),
            title: Text("C O N T A C T  U S"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ContactUs();
                  },
                ),
              );
            },
          ),

          // Log out button
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("L O G  O U T"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return LogOut();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
