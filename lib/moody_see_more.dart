import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoodySeeMore extends StatelessWidget {
  String lable;

  MoodySeeMore({required this.lable, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            lable,
            style: GoogleFonts.inder(
              textStyle: TextStyle(
                color: Color(0xFF000000),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  "See more",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(
                        0xFF027A48,
                      ),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                  color: Color(
                    0xFF027A48,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
