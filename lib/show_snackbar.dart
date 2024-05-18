import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void showSnackBar(String message, BuildContext context, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: color,
      duration: const Duration(seconds: 2),
      content: Text(message,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(color: Colors.white, fontSize: 16.0))));
}