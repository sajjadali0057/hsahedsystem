
import 'package:flutter/material.dart';


class CustomCircularProgress extends StatefulWidget {
  final Color? color ;
  const CustomCircularProgress({super.key, this.color = Colors.white});
  @override
  CustomCircularProgressState createState() => CustomCircularProgressState();
}

class CustomCircularProgressState extends State<CustomCircularProgress> with SingleTickerProviderStateMixin {
  late AnimationController _controller;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 50), // Control the speed of the rotation
      vsync: this,
    )..repeat(); // Repeats the animation indefinitely
  }

  @override
  void dispose() {
    _controller.dispose(); // Don't forget to dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: RotationTransition(
          turns: _controller, // Control the rotation animation
          child: CircularProgressIndicator(
            color: widget.color,
            strokeWidth: 2,
          ),
        ),
      );
  }
}