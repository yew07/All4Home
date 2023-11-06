import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DistanceMoving extends StatelessWidget {
  const DistanceMoving({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(199, 212, 197, 1),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Color(0xFF1A7450),
        title: Text(
          "Local - Long Distance Moving",
          style: GoogleFonts.openSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Local - Long Distance Moving"),
      ),
    );
  }
}