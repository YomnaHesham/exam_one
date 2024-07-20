import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  String lable;

  CategoryItem({required this.lable, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          lable,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: Color(0xFF2E2E5D),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ));
  }
}
