import 'package:flutter/material.dart';

class SelectableChipList extends StatefulWidget {
  const SelectableChipList({super.key});

  @override
  SelectableChipListState createState() => SelectableChipListState();
}

class SelectableChipListState extends State<SelectableChipList> {

  final List<Map<String, String>> items = [
    {"day": "25", "label": "Today"},
    {"day": "26", "label": "Nov"},
    {"day": "27", "label": "Nov"},
    {"day": "28", "label": "Nov"},
    {"day": "29", "label": "Nov"},
    {"day": "30", "label": "Nov"},
    {"day": "1", "label": "Dec"},
    {"day": "2", "label": "Dec"},
    {"day": "3", "label": "Dec"},
    {"day": "4", "label": "Dec"},
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final isSelected = selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              width: 70,
              margin: const EdgeInsets.only(right: 15),
              padding: const EdgeInsets.symmetric(horizontal: 12.0, ),
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xffD5F4ED): Colors.transparent,
                borderRadius: BorderRadius.circular(20.0),
                border: isSelected
                    ? Border.all(color: const Color(0xff8AD4C4), width: 2.0)
                    : Border.all(color: const Color(0xff628A79), width: 1.0),
              ),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      item['day']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isSelected ? Colors.black : const Color(0xff628A79),
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      item['label']!,
                      style: TextStyle(
                        color: isSelected ? Colors.black :  const Color(0xff628A79),
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}