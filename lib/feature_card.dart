import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Color(0xFFECFDF3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Positive vibes",
                    style: GoogleFonts.inder(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF344054),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Boost your mood with positive vibes",
                  style: GoogleFonts.inder(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_circle,
                      size: 16,
                      color: Color(0xFF32D583),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "10 mins",
                      style: GoogleFonts.inder(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/images/Walking_the_Dog.png",
              width: 96,
              height: 90,
            ),
          ),
        ],
      ),
    );
  }
}
