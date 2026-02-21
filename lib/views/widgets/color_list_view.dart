import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_notes_cubits/add_notes_cubit.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNotesCubit>(context).color = kColors[index];
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,

              color: kColors[index],
            ),
          );
        },
        itemCount: kColors.length,
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
