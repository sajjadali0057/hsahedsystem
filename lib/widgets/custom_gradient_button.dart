import 'package:flutter/material.dart';

class GradientOutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const GradientOutlineButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,

      child: Stack(
        children: [
          // Gradient border container
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.blue, Colors.purple], // Gradient colors
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.all(2.0), // Border thickness
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent, // Inner background color
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          // Button overlaid on the gradient border
          TextButton(
            style: ButtonStyle(
              padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              ),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              backgroundColor: WidgetStateProperty.all(Colors.black),
            ),
            onPressed: onPressed,
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}