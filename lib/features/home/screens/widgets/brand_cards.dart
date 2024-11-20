
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BrandsCards extends StatelessWidget {
  const BrandsCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              height: 60,
              width: 110,
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: SvgPicture.asset(
                'assets/brand1.svg',
                fit: BoxFit.scaleDown,
              ),
            );
          }),
    );
  }
}