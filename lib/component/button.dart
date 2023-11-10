import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(199, 212, 197, 1),
          borderRadius: BorderRadius.circular(40),
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Text(
              text,
              style: GoogleFonts.outfit(color: Color.fromRGBO(26, 116, 80, 1)),
            ),

            const SizedBox(
              width: 10,
            ),

            //icon
            Icon(
              Icons.book,
              color: Color.fromRGBO(26, 116, 80, 1),
            ),
          ],
        ),
      ),
    );
  }
}
