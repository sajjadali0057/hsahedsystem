import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
         Container(
          height: 200,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: const Color(0xFFEFFAF4), // Light greenish background
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Star distribution section
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 5; i >= 1; i--)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: [
                            Text(
                              '$i',
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 4),
                            const Icon(Icons.star, color: Colors.amber, size: 16),
                            const SizedBox(width: 8),
                            Expanded(
                              child: LinearProgressIndicator(
                                value: _getProgressValue(i),
                                minHeight: 8,
                                borderRadius: BorderRadius.circular(10),
                                backgroundColor: Colors.transparent,
                                color: Colors.green,
                              ),
                            ),

                          ],
                        ),
                      ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '4.5',
                      style: TextStyle(
                        fontSize: 48.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        5,
                            (index) => Icon(
                          index < 4 ? Icons.star : Icons.star_half,
                          color: Colors.amber,
                          size: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '52 Reviews',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
    )
    );
  }

  // Function to calculate progress values
  double _getProgressValue(int rating) {
    switch (rating) {
      case 5:
        return 0.75; // Replace with actual percentage
      case 4:
        return 0.5;
      case 3:
        return 0.2;
      case 2:
        return 0.1;
      case 1:
        return 0.05;
      default:
        return 0.0;
    }
  }

  // Function to return counts as strings
}
