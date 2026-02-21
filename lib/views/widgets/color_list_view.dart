import 'package:flutter/material.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff9f6fbc),
    Color(0xffb984b4),
    Color(0xffd498aa),
    Color(0xff726a96),
    Color(0xff416372),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: colors[index],
            ),
          );
        },
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: isActive
          ? const CircleAvatar(radius: 50, child: Icon(Icons.check))
          : CircleAvatar(radius: 37, backgroundColor: color),
    );
  }
}
