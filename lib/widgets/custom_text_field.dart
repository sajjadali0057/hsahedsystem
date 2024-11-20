
import 'package:flutter/material.dart';

import '../constants/constants.dart';
class CustomTextField extends StatelessWidget {
  final String hint;

  final TextEditingController controller;

  const CustomTextField({
    super.key,
     this.hint = '', required this.controller,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hint,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 5,),
        SizedBox(

          child: TextFormField(
            controller: controller,
            cursorColor: Colors.black,
            validator: (val) {
              if (val == null || val.isEmpty) {
                return 'Please Enter Your $hint';
              }
              return null;
            },

            decoration: InputDecoration(

                hintText: hint,
                hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: myGrayColor, width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: myGrayColor, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: myGrayColor, width: 1))),
          ),
        ),
      ],
    );
  }
}
