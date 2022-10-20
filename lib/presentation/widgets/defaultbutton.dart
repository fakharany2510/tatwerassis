import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget defaultButton({
  required double width,
  required double height,
  required Color buttonColor,
  required Color textColor,
  required String buttonText,
  required VoidCallback function,
  double raduis = 25,
  double fontSize=18,
})=>Container(

    height: height,
    width: width,
    decoration: BoxDecoration(
      color:buttonColor ,
      borderRadius: BorderRadius.circular(raduis),
    ),
    child:TextButton(
      onPressed:function,
      child:  Text('${buttonText}',style: GoogleFonts.poppins(
fontSize: fontSize,
fontWeight: FontWeight.w600,
color: textColor,
),

))
);