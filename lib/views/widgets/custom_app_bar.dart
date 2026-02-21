import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, required this.text, this.onPreassed});
final IconData icon;
final String text;
final void Function()? onPreassed;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style:const TextStyle(fontSize: 26)),
        CustomSearchIcon(icon: icon,onTap: onPreassed,),
      ],
    );
  }
}
