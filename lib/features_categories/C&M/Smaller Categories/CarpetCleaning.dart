import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarpetCleaning extends StatelessWidget {
  const CarpetCleaning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(199, 212, 197, 1),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Color(0xFF1A7450),
        title: Text(
          "Carpet Cleaning",
          style: GoogleFonts.openSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Carpet Cleaning"),
      ),
    );
  }
}