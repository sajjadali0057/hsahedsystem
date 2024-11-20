import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hsahedsystem/constants/constants.dart';
import 'package:hsahedsystem/constants/text_theme_styles.dart';
import 'package:hsahedsystem/features/home/screens/widgets/brand_cards.dart';
import 'package:hsahedsystem/features/home/screens/widgets/carousel_slider.dart';
import 'package:hsahedsystem/features/home/screens/widgets/category_widget.dart';
import 'package:hsahedsystem/features/home/screens/widgets/deals_chip.dart';
import 'package:hsahedsystem/features/home/screens/widgets/deals_of_day_card.dart';
import 'package:hsahedsystem/features/home/screens/widgets/home_discount_chip.dart';
import 'package:hsahedsystem/features/home/screens/widgets/home_hero_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: myBackgroundColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: HeroWidget(searchController: searchController),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Text("Filter By Category",
                            style: AppTextStyle.homeTitles),
                        const SizedBox(height: 10),
                        const CategoryWidget(),
                        Divider(color: Colors.black.withOpacity(0.5)),
                        const SizedBox(height: 10),
                        Text("Filter By Discount",
                            style: AppTextStyle.homeTitles),
                        const SizedBox(height: 10),
                        HomeDiscountChip(onTap: () {}),
                        const SizedBox(height: 10),
                        Text("Upcoming Deals", style: AppTextStyle.homeTitles),
                        const SizedBox(height: 10),
                        const SelectableChipList(),
                        const SizedBox(height: 20),
                        const CustomCarousel(),
                        const SizedBox(height: 20),
                        Text("Deals of the Day",
                            style: AppTextStyle.homeTitles),
                        const SizedBox(height: 10),
                        const RestaurantCard(),
                        const SizedBox(height: 20),
                        Text(
                          "Our Partners",
                          style: AppTextStyle.homeTitles,
                        ),
                        SizedBox(
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
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const BrandsCards(),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


