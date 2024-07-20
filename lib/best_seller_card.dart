import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFFF5F5FA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/bestSeller.png",
            width: 120,
            height: 120,
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            width: 155,
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Light Mage",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Color(0xFF010104),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  "Laurie Forest",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Color(0xFF6A6A8B),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
