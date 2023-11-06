import 'package:all4home/features_categories/R&S/Cleaning_Repair.dart';
import 'package:all4home/features_categories/R&S/Interior_Market.dart';
import 'package:all4home/features_categories/R&S/Second_Hand.dart';
import 'package:all4home/features_categories/R&S/Smart_Market.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Renting_Selling extends StatefulWidget {
  const Renting_Selling({super.key});

  @override
  State<Renting_Selling> createState() => _Renting_SellingState();
}

class _Renting_SellingState extends State<Renting_Selling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(199, 212, 197, 1),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Color(0xFF1A7450),
        title: Text(
          "Renting & Selling",
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
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Renting & Selling',
                  style: GoogleFonts.outfit(
                    fontSize: 30,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/selling.png"),
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
            ),

//Text displaying Categories
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Categories',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
                            return Cleaning_Repair();
                          },
                        ),
                      );
                    },
                    child: Container(
                      child: const Text(
                        'Cleaning & Repairment Tools',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      height: 100,
                      width: 100,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
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
                            return Interior_Market();
                          },
                        ),
                      );
                    },
                    child: Container(
                      child: const Text(
                        'Interior Market',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      height: 100,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
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
                            return Smart_Market();
                          },
                        ),
                      );
                    },
                    child: Container(
                      child: Text(
                        'Smart Market',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      height: 100,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
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
                            return Second_Hand();
                          },
                        ),
                      );
                    },
                    child: Container(
                      child: const Text(
                        'Second Hand Market',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      height: 100,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
