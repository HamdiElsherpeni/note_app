import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextFailed extends StatelessWidget {
  const CustomTextFailed({super.key, this.maxLines, required this.hint});
  final int? maxLines;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,

      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([mycolor]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: mycolor ?? Colors.white),
    );
  }
}
