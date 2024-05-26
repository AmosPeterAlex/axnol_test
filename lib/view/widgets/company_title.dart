import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompanyTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'SHREE ',
            style: GoogleFonts.suezOne(
              fontSize: 28,
              fontWeight: FontWeight.w400,
              color: Color(0xffFF0000),
            ),
          ),
          TextSpan(
            text: 'IRA',
            style: GoogleFonts.suezOne(
              fontSize: 28,
              fontWeight: FontWeight.w400,
              color: Color(0xffFF9900),
            ),
          ),
          TextSpan(
            text: '\nEDUCATION',
            style: GoogleFonts.suezOne(
              fontSize: 28,
              fontWeight: FontWeight.w400,
              color: Color(0xffFF0000),
            ),
          ),
        ],
      ),
    );
  }
}
