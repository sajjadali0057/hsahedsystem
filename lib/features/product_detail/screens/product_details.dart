import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hsahedsystem/constants/constants.dart';
import 'package:hsahedsystem/constants/text_theme_styles.dart';
import 'package:hsahedsystem/features/home/screens/widgets/deals_of_day_card.dart';
import 'package:hsahedsystem/features/product_detail/widgets/rating_widget.dart';
import 'package:hsahedsystem/features/product_detail/widgets/review_card.dart';
import 'package:hsahedsystem/widgets/custom_button.dart';


import '../widgets/gradient_text.dart';
import '../widgets/product_form.dart';
import '../widgets/product_hero.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  static const String routeName = '/product-details';

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Stack(
            children: [
              Container(
                  height: MediaQuery.sizeOf(context).height * 0.4,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/banner.jpg'),
                      fit: BoxFit.cover,
                    ),
                  )),
              SingleChildScrollView(
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent),
                  child: Column(
                    children: [
                      const ProductsHero(),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: GradientText("30% off",
                                        gradient: appGradient,
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: GoogleFonts.outfit()
                                                .fontFamily)),
                                  ),
                                  SizedBox(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/Vector.png',
                                              height: 30,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Sold: ',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily:
                                                      GoogleFonts.outfit()
                                                          .fontFamily),
                                            ),
                                            Text(
                                              "564",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily:
                                                      GoogleFonts.outfit()
                                                          .fontFamily,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "5.0",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily:
                                                      GoogleFonts.outfit()
                                                          .fontFamily),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Colors.green,
                                              size: 18,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "(7 reviews) ",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily:
                                                      GoogleFonts.outfit()
                                                          .fontFamily),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'Ristorante – Niko Romito',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 38,
                                      fontWeight: FontWeight.w500,
                                      fontFamily:
                                          GoogleFonts.outfit().fontFamily),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Abu Dhabi, United Arab Emirates",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontFamily:
                                            GoogleFonts.outfit().fontFamily),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const ProductForm(),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Share:",
                                    style: AppTextStyle.heading,
                                  ),
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Image.asset(
                                              'assets/facebook.png'),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child:
                                              Image.asset('assets/twitter.png'),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Image.asset(
                                              'assets/whatsapp.png'),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Image.asset('assets/copy.png'),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Divider(
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Description",
                                style: AppTextStyle.productHeading,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Highlights",
                                style: AppTextStyle.homeTitles,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: Text(
                                  "patrons can choose from a selection of international cuisine for lunch or dinner complete with soft drink or house beverages",
                                  style: AppTextStyle.productDescription,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "About These Deals",
                                style: AppTextStyle.homeTitles,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: Text(
                                  "type of cuisine: internationals multiple starters mains and desserts free flowing soft drink over two house beveragesvalid 7 days a week",
                                  style: AppTextStyle.productDescription,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Divider(
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Terms & Conditions",
                                style: AppTextStyle.productHeading,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Fine Print",
                                style: AppTextStyle.homeTitles,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: Text(
                                  "Child option valid for ages4 to 12 years. valid for dine-in only.",
                                  style: AppTextStyle.productDescription,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Valid days and hours",
                                style: AppTextStyle.homeTitles,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: Text(
                                  "Seven days a week, known 3:00 PM and 6:30 PM. 10:30 PM. Prior booking/cancelation (subject to available) at least 4 hours in advance. Expires 3 month after purchase. Limit 4 per person(s), may buy 3 additional as gift(s).",
                                  style: AppTextStyle.productDescription,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Divider(
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Store Details",
                                style: AppTextStyle.productHeading,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "TJ Foods Corniche",
                                style: AppTextStyle.homeTitles,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "Abu Dhabi, United Arab Emirates",
                                    style: AppTextStyle.productDescription,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "+525201212",
                                style: AppTextStyle.homeTitles,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Divider(
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 60,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Reviews",
                                      style: AppTextStyle.productHeading,
                                    ),
                                    Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            gradient: appGradient),
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.transparent,
                                              shadowColor: Colors.transparent,
                                              elevation: 0,
                                            ),
                                            onPressed: () {},
                                            child: const Text(
                                              "+ Write Review",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ))),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              RatingWidget(),
                              const SizedBox(
                                height: 20,
                              ),
                              const ReviewCard(),
                              const SizedBox(
                                height: 20,
                              ),
                              Divider(
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const ReviewCard(),
                              const SizedBox(
                                height: 20,
                              ),
                              Divider(
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const ReviewCard(),
                              const SizedBox(
                                height: 20,
                              ),
                              Divider(
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Suggested Deals",
                                style: AppTextStyle.productHeading,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const RestaurantCard(),
                              SizedBox(
                                height: 70,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.green, width: 2)),
                                          child: OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                side: const BorderSide(
                                                    color: Colors.transparent),
                                                backgroundColor:
                                                    Colors.transparent,
                                                shadowColor: Colors.transparent,
                                              ),
                                              onPressed: () {},
                                              child: const Text("Add to Cart"))),
                                    ),
                                    const SizedBox(width: 20,),
                                    Expanded(
                                        child: CustomButton(
                                      onTap: () {},
                                      title: 'Buy Now',
                                    ))
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20,)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

