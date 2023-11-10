import 'package:all4home/component/booking.dart';
import 'package:all4home/component/button.dart';
import 'package:all4home/features_categories/services/bedroomservices.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesDetailsPage extends StatefulWidget {
  final Bedroom_Service bedservice;
  const ServicesDetailsPage({super.key, required this.bedservice});

  @override
  State<ServicesDetailsPage> createState() => _ServicesDetailsPageState();
}

class _ServicesDetailsPageState extends State<ServicesDetailsPage> {
  void navigateToBookingPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return BookingPage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  //image
                  Image.asset(
                    widget.bedservice.image,
                    height: 200,
                  ),
                  //rating
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow[800]),
                      const SizedBox(width: 5),
                      Text(
                        widget.bedservice.rating,
                        style: GoogleFonts.outfit(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 120),
                      Icon(Icons.place,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      const SizedBox(width: 5),
                      Text(
                        widget.bedservice.location,
                        style: GoogleFonts.outfit(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  //service name
                  Text(
                    widget.bedservice.name,
                    style: GoogleFonts.outfit(
                      fontSize: 28,
                    ),
                  ),
                  const SizedBox(height: 25),

                  // description
                  Text(
                    "About Us",
                    style: GoogleFonts.outfit(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    widget.bedservice.description,
                    style: GoogleFonts.outfit(
                      color: Colors.grey[600],
                      fontSize: 14,
                      height: 2,
                    ),
                  ),
                  const SizedBox(height: 25),

                  Text(
                    "Why choose us?",
                    style: GoogleFonts.outfit(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    widget.bedservice.chooseus,
                    style: GoogleFonts.outfit(
                      color: Colors.grey[600],
                      fontSize: 14,
                      height: 2,
                    ),
                  ),
                  const SizedBox(height: 25),

                  Text(
                    "Services",
                    style: GoogleFonts.outfit(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.bedservice.servicetype,
                    style: GoogleFonts.outfit(
                      color: Colors.grey[600],
                      fontSize: 14,
                      height: 2,
                    ),
                  ),

                  const SizedBox(height: 25),

                  Text(
                    "Contact Us",
                    style: GoogleFonts.outfit(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.phone_android,
                        color: Colors.black,
                      ),
                      Text(
                        widget.bedservice.phonenum,
                        style: GoogleFonts.outfit(
                          color: Colors.grey[800],
                          fontSize: 14,
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      Text(
                        widget.bedservice.email,
                        style: GoogleFonts.outfit(
                          color: Colors.grey[800],
                          fontSize: 14,
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  )
                ],
              ),
            ),
          ),

          //price
          Container(
            color: Color.fromRGBO(26, 116, 80, 1),
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "RM " + widget.bedservice.price,
                      style: GoogleFonts.outfit(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    //add to wishlist button
                    Row(
                      children: [
                        MyButton(
                          text: "Book now",
                          onTap: () {
                            navigateToBookingPage();
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
