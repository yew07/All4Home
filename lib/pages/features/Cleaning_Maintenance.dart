import 'package:all4home/features_categories/C&M/Appliances.dart';
import 'package:all4home/features_categories/C&M/Cleaning.dart';
import 'package:all4home/features_categories/C&M/ElectricalServices.dart';
import 'package:all4home/features_categories/C&M/Lawn_GardenServices.dart';
import 'package:all4home/features_categories/C&M/Plumbing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class Cleaning_Maintenance extends StatefulWidget {
  const Cleaning_Maintenance({super.key});

  @override
  State<Cleaning_Maintenance> createState() => _Cleaning_MaintenanceState();
}

class _Cleaning_MaintenanceState extends State<Cleaning_Maintenance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(199, 212, 197, 1),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Color(0xFF1A7450),
        title: Text(
          "Cleaning & Maintenance",
          style: GoogleFonts.openSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Align(
        alignment: FractionalOffset.topCenter,
        child: Column(
          children: [
            SizedBox(height: 5),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Cleaning\n& Maintenance',
                  style: GoogleFonts.outfit(
                    fontSize: 30,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/cleaning .png"),
                ),
                color: Color.fromRGBO(170, 170, 170, 1),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              margin: const EdgeInsets.all(10.0),
              width: 400.0,
              height: 200.0,
            ).animate().fadeIn(duration: 300.ms, delay: 200.ms),

//Text displaying Categories
            const SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Categories',
                style: GoogleFonts.outfit(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ).animate().fadeIn(duration: 400.ms, delay: 300.ms),
            ),

            SizedBox(
              width: 320,
              height: 380,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  const SizedBox(height: 25),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Appliances();
                          },
                        ),
                      );
                    },
                    child: Container(
                      child: Text(
                        'Cleaning',
                        style: GoogleFonts.outfit(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      height: 100,
                      width: 100,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/cleaning_cat.png"),
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
                  const SizedBox(height: 25),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Cleaning();
                          },
                        ),
                      );
                    },
                    child: Container(
                      child: Text(
                        'Appliances',
                        style: GoogleFonts.outfit(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      height: 100,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/appliances_cat.png"),
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
                  const SizedBox(height: 25),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ElectricalServices();
                          },
                        ),
                      );
                    },
                    child: Container(
                      child: Text(
                        'Electrical Services',
                        style: GoogleFonts.outfit(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      height: 100,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/electrical_cat.png"),
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
                  const SizedBox(height: 25),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Lawn_GardenServices();
                          },
                        ),
                      );
                    },
                    child: Container(
                      child: Text(
                        'Lawn & Garden Services',
                        style: GoogleFonts.outfit(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      height: 100,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage("assets/images/lawn_garden_cat.png"),
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
                  const SizedBox(height: 25),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Plumbing();
                          },
                        ),
                      );
                    },
                    child: Container(
                      child: Text(
                        'Plumbing Services',
                        style: GoogleFonts.outfit(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      height: 100,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/plumbing_cat.png"),
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
              ).animate().fadeIn(duration: 300.ms, delay: 200.ms),
            ),
          ],
        ),
      ),
    );
  }
}
