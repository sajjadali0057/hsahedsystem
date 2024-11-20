import 'package:flutter/material.dart';
const Color myGrayColor = Color(0xFF606060);
const Color myBlueColor = Color(0xFF56B3EB);
const Color myBackgroundColor = Color(0xffD5F4ED);
const Color myBackgroundDarkColor = Color(0xff628A79);


const appGradient = LinearGradient(colors:   [
    Color(0xFF5ACD84),
    Color(0xFF56AEFF),
],);
const String apiUrl = 'https://api.mr-corp.ca/api/login/';

final List<Map<String, String>> categories = [
    {'image': 'assets/category4.png', 'name': 'Dining'},
    {'image': 'assets/category3.png', 'name': 'Saloon/Spa'},
    {'image': 'assets/category2.png', 'name': 'Entertainment'},
    {'image': 'assets/category1.png', 'name': 'Cleaning'},
    {'image': 'assets/category1.png', 'name': 'Cleaning'},

];
final List<Map<String, String>> carouselItems = [
    {
        'image': 'assets/carousal1.jpg',
        'discount': '30% Off',
        'title': "Zheng He's",
        'meal': 'Dinner',
        'price': 'Only AED 75',
    },
    {
        'image': 'assets/carousel2.jpg',
        'discount': '25% Off',
        'title': "Hakkasan",
        'meal': 'Lunch',
        'price': 'Only AED 90',
    },
    {
        'image': 'assets/carousel3.jpg',
        'discount': '50% Off',
        'title': "La Petite Maison",
        'meal': 'Brunch',
        'price': 'Only AED 120',
    },
];

final List<Map<String, dynamic>> restaurants = [
    {
        'image': 'assets/restaurant1.jpg',
        'discount': '30% Off',
        'name': 'Ristorante – Niko Romito',
        'description': 'Dine and enjoy a 20% Discount',
        'location': 'Ristorante L\'Olivo at Al Maha',
        'extraLocations': '+5 more',
        'rating': 5.0,
        'reviews': 7,
        'sold': 7350,
    },
    {
        'image': 'assets/restaurant2.jpg',
        'discount': '25% Off',
        'name': 'Hakkasan',
        'description': 'Enjoy premium dining experience',
        'location': 'Atlantis The Palm',
        'extraLocations': '+3 more',
        'rating': 4.8,
        'reviews': 15,
        'sold': 5200,
    },
];