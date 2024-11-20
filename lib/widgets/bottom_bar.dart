import 'package:flutter/material.dart';
import 'package:hsahedsystem/constants/text_theme_styles.dart';

import '../features/home/screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  static const String routeName = '/nav-bar';

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  final List<Widget> appScreens = [
    const HomeScreen(),
    Center(child: Text("Coming soon..",style: AppTextStyle.homeTitles,)),
     Center(child: Text("Coming soon..",style: AppTextStyle.homeTitles,)),
    Center(child: Text("Coming soon..",style: AppTextStyle.homeTitles,)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens[_currentIndex],
      bottomNavigationBar: Container(
        height: 89,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
        BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 5,
        offset: const Offset(0, -2),
      ),
    ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomBarItem(
              iconData: Icons.home,
              currentIndex: _currentIndex,
              index: 0,
              label: "Home",
              onTap: () => setState(() {
                _currentIndex = 0;
              }),
            ),
            BottomBarItem(
              iconData: Icons.category,
              currentIndex: _currentIndex,
              index: 1,
              label: "Categories",
              onTap: () => setState(() {
                _currentIndex = 1;
              }),
            ),
            BottomBarItem(
              iconData: Icons.location_on,
              currentIndex: _currentIndex,
              index: 2,
              label: "Location",
              onTap: () => setState(() {
                _currentIndex = 2;
              }),
            ),
            BottomBarItem(
              iconData: Icons.person,
              currentIndex: _currentIndex,
              index: 3,
              label: "Profile",
              onTap: () => setState(() {
                _currentIndex = 3;
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    super.key,
    required this.iconData,
    required this.currentIndex,
    required this.index,
    required this.label,
    required this.onTap,
  });

  final int currentIndex;
  final int index;
  final IconData iconData;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: currentIndex == index ? 30 : 0),
        height: 50,

        decoration: BoxDecoration(
          gradient: currentIndex == index
              ? const LinearGradient(
            colors: [Color(0xFF5ACD84), Color(0xFF56AEFF)],
          )
              : null,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: currentIndex == index ? 24 : 24,
              color: currentIndex == index ? Colors.white : Colors.grey,
            ),
            const SizedBox(width: 5),
            if (currentIndex == index)
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
