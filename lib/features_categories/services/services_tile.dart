import 'package:flutter/material.dart';
import 'package:all4home/features_categories/services/bedroomservices.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class Services_Tile extends StatelessWidget {
  final Bedroom_Service bedservice;
  final void Function()? onTap;

  const Services_Tile({
    super.key,
    required this.bedservice,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(28),
        ),
        margin: const EdgeInsets.only(
          top: 25,
          left: 25,
          right: 25,
          bottom: 30,
        ),
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image
            Image.asset(bedservice.image),
            SizedBox(
              height: 15,
            ),
            //Name
            Text(
              bedservice.name,
              style: GoogleFonts.outfit(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            //Ratings

            SizedBox(
              height: 35,
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[800],
                  ),
                  Text(bedservice.rating),
                  SizedBox(
                    width: 60,
                  ),
                  Icon(Icons.place),
                  Text(bedservice.location),
                ],
              ),
            ),

            //Description
            SizedBox(
              height: 100,
              child: Column(
                children: [
                  Text(bedservice.servicetype),
                ],
              ),
            )
          ],
        ),
      ).animate().fadeIn(duration: 300.ms, delay: 200.ms),
    );
  }
}
