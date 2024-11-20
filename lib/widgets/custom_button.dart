import 'package:flutter/material.dart';
import 'package:hsahedsystem/constants/constants.dart';


class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const CustomButton({
    super.key,
    required this.onTap, required this.title,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: appGradient
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        onPressed:onTap,
        child: Text(title, style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
      ),
    );
  }
}
