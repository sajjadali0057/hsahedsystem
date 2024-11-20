import 'package:flutter/cupertino.dart';

import '../../../../constants/constants.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 95,
      width: double.infinity,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {

          final category = categories[index];
          return SizedBox(
            width: 90,
            height: 90,
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: myBackgroundColor,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.asset(
                      category['image']!,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                Text("${category['name']}",style: const TextStyle(fontSize: 12),)
              ],
            ),
          );
        },

      ),
    );
  }
}