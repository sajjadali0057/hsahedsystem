import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class HomeDiscountChip extends StatelessWidget {
  @immutable

  final VoidCallback onTap;
  HomeDiscountChip({
    super.key, required this.onTap,
  });
  int discount = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            discount = discount+10;
            return GestureDetector(
              onTap:onTap,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Chip(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: myBackgroundDarkColor),
                    label: SizedBox(
                      width: 100,
                      height: 40,
                      child: Center(
                        child: Text(
                          "Up to $discount%",
                          style:
                          const TextStyle(
                              fontSize: 16,
                              color: myBackgroundDarkColor),
                        ),
                      ),
                    )),
              ),
            );
          }),
    );
  }
}