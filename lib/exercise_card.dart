import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseCard extends StatelessWidget {
  String img;
  String lable;
  int color;

  ExerciseCard(
      {required this.lable, required this.color, required this.img, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/images/$img.png",
              width: 20,
              height: 24,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              lable,
              style: GoogleFonts.inder(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000),
              ),
            )
          ],
        ),
      ),
    );
  }
}
