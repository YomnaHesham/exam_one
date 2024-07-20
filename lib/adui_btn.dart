import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Btn extends StatelessWidget {
  String lable;
  int color;

  Btn({required this.lable, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          lable,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: Color(
                  color,
                ),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}
