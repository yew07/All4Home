import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:settings_ui/settings_ui.dart';

class AboutUs extends StatefulWidget {
  AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(199, 212, 197, 1),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Color(0xFF1A7450),
        title: Text(
          "About Us",
          style: GoogleFonts.outfit(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('All4Home',
                    style: GoogleFonts.outfit(
                        fontSize: 25, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Image.asset(
                  'assets/images/All4Home Logo.png',
                  width: 100,
                  height: 100,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Our platform offers a wide range of high-quality products and home services to meet the needs of our customers.',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mission Statement:',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Our mission is to provide high-quality products and services to our customers.',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Values:',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(height: 8),
                      ListTile(
                        leading: Icon(Icons.check),
                        title:
                            Text('Customer satisfaction is our top priority'),
                      ),
                      ListTile(
                        leading: Icon(Icons.check),
                        title: Text('We strive for continuous improvement'),
                      ),
                      ListTile(
                        leading: Icon(Icons.check),
                        title: Text(
                            'We value honesty and integrity in all our actions'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
