import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeMoreCard extends StatelessWidget {
  String lable;

  SeeMoreCard({required this.lable, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            lable,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Color(0xFF010104),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "See more",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Color(0xFF4838D1,
                  ),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
