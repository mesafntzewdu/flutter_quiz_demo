import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizButton extends StatelessWidget {
  const QuizButton(this.message, {super.key, required this.onClick});
  final String message;
  final Function() onClick;
  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(12),
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      onPressed: onClick,
      child: Text(
        message,
        style: GoogleFonts.outfit(
          color: Colors.white,
        ),
      ),
    );
  }
}
