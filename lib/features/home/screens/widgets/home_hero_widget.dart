import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Text(
                    "UAE",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: 15,
                  )
                ],
              ),
              SizedBox(
                height: 30,
                child: Image.asset('assets/logo.png', fit: BoxFit.fitHeight),
              ),
              const Badge(
                backgroundColor: Colors.deepOrange,
                padding: EdgeInsets.all(1),
                label: Text("03"),
                textStyle: TextStyle(fontSize: 9),
                child: Icon(Icons.shopping_cart),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: appGradient,
                  ),
                  child: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
