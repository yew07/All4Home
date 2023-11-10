import 'package:all4home/features_categories/C&M/Smaller%20Categories/Bedroom.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/Kitchen.dart';
import 'package:all4home/features_categories/C&M/Smaller%20Categories/Livingroom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class Appliances extends StatelessWidget {
  const Appliances({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(199, 212, 197, 1),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Color(0xFF1A7450),
        title: Text(
          "Cleaning",
          style: GoogleFonts.openSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: 0.8),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                  hintText: 'What are you looking for?',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {},
                  ),
                ),
              ),
            ),

            //Diverder line for searchbar
            Divider(
              height: 10.0,
              thickness: 1.0,
              color: Colors.grey,
              indent: 20.0,
              endIndent: 20.0,
            ),

            Align(
              alignment: FractionalOffset.topCenter,
              child: Column(
                children: [
                  SizedBox(
                    height: 550,
                    width: 330,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return Kitchen();
                                },
                              ),
                            );
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                'Kitchen',
                                style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            height: 100,
                            width: 100,
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/kitchen_cat.png"),
                                fit: BoxFit.fill,
                              ),
                              color: Color.fromRGBO(224, 212, 205, 1),
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return Bedroom();
                                },
                              ),
                            );
                          },
                          child: Container(
                            child: Center(
                              child: const Text(
                                'Bedroom',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            height: 100,
                            width: 100,
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/bedroom_cat.png"),
                              ),
                              color: Color.fromRGBO(224, 212, 205, 1),
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return Livingroom();
                                },
                              ),
                            );
                          },
                          child: Container(
                            child: Center(
                              child: const Text(
                                'Living Room',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            height: 100,
                            width: 100,
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/livingroom_cat.png"),
                              ),
                              color: Color.fromRGBO(224, 212, 205, 1),
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //   ],
            // ),
          ],
        ).animate().fadeIn(duration: 300.ms, delay: 200.ms),
      ),
    );
  }
}
