import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReactImg extends StatelessWidget {
  String lable;
  String image;
   ReactImg({required this.lable,required this.image,super.key});

  @override
  Widget build(BuildContext context) {
    return                   Column(
      children: [
        Image.asset(
          "assets/images/$image.png",
          width: 60,
          height: 60,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          lable,
          style: GoogleFonts.inder(
            textStyle: TextStyle(
              color: Color(0xFF371B34),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
