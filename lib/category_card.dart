import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  String lable;

  CategoryCard({required this.lable, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFF5F5FA),
          padding:  EdgeInsets.symmetric(horizontal: 16,vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // <-- Radius
          ),
          side: BorderSide(color: Colors.transparent),
        ),
        onPressed: () {},
        child: Text(
          lable,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: Color(0xFF2E2E5D),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
