
import 'package:flutter/material.dart';
import 'package:hsahedsystem/constants/text_theme_styles.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture
            const CircleAvatar(
              radius: 24.0,
              backgroundImage: AssetImage('assets/reviewimage.png')
            ),
            const SizedBox(width: 12.0),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Courtney Henry',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(height: 4.0),
                  // Star Rating
                  Row(
                    children: [
                      Row(
                        children: List.generate(
                          5,
                              (index) => const Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                    size: 20.0,
                                                  ),
                              ),
                        ),
                      ),
                      const Text(
                        '2 mins ago',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),


                ],
              ),
            ),

            const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ],
        ),
        Text(
          'Consequat velit qui adipisicing sunt do reprehenderit ad '
              'laborum tempor ullamco exercitation. Ullamco tempor '
              'adipisicing et voluptate duis sit esse aliqua.',
          style: AppTextStyle.productDescription

        ),
      ],
    );
  }
}