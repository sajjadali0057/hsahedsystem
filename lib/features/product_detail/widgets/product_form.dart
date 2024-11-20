
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';
import '../../../constants/text_theme_styles.dart';
class ProductForm extends StatelessWidget {
  const ProductForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: myBackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProductFormFields(
                  label: 'Choose Location',
                  hint: 'Palm Jumeirah',
                  icon: Icon(Icons.keyboard_arrow_down_outlined),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ProductFormFields(
                  label: 'Select Date',
                  hint: '30 Nov 2023',
                  icon: Icon(Icons.calendar_month),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Choose Time Slot",
                  style: AppTextStyle.heading,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "20 AED",
                      style: AppTextStyle.productHeading,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.black, width: 2)),
                          child: const Center(
                              child: Text(
                                "-",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              )),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          '2',
                          style: AppTextStyle.productHeading.copyWith(fontSize: 35),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.black, width: 2)),
                          child: const Center(
                              child: Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              )),
                        )
                      ],
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class ProductFormFields extends StatelessWidget {
  final String label;
  final String hint;
  final Icon icon;

  const ProductFormFields({
    super.key,
    required this.label,
    required this.hint,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              color: Colors.black38,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: GoogleFonts.outfit().fontFamily),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  suffixIcon: icon,
                  suffixIconColor: Colors.black54,
                  hintText: hint,
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: GoogleFonts.outfit().fontFamily),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey, width: 0.5)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey, width: 0.5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey, width: 0.5))),
            ),
          ),
        ),
      ],
    );
  }
}

