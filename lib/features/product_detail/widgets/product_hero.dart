
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
class ProductsHero extends StatelessWidget {
  const ProductsHero({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.35,
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){Navigator.pop(context);},
                child: Container(
                    height: 30,
                    width: 30,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 15,
                        ))),
              ),
              const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30,
              )
            ],
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white, width: 2)),
                      child: index < 4
                          ? Image.asset(
                        category['image']!,
                        fit: BoxFit.contain,
                      )
                          : Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(category['image']!),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black54),
                            child: const Center(
                              child: Text(
                                '+5',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          )),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}


