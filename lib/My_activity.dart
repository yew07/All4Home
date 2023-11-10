import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class My_activity extends StatelessWidget {
  const My_activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      backgroundColor: Color.fromRGBO(199, 212, 197, 1),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "My Activity",
                      style: GoogleFonts.outfit(
                          fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(147, 228, 158, 0.498),
                    ),
                    height: 36,
                    width: 160,
                    child: Center(
                      child: Text(
                        "Bookings",
                        style: GoogleFonts.outfit(fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(35, 132, 48, 0.49),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            "Maid Magic",
                            style: GoogleFonts.outfit(fontSize: 20),
                          ),
                          SizedBox(
                            width: 45,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                child: Text("Date: 11/11/2023\nTime: 3.00p.m."),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 75,
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(35, 132, 48, 0.49),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 75,
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(35, 132, 48, 0.49),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
