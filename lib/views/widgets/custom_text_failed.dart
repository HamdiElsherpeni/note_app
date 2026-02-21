import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextFailed extends StatelessWidget {
  const CustomTextFailed({
    super.key,
    this.maxLines,
    required this.hint,
    this.onSaved, this.onChanged,
  });
  final int? maxLines;
  final String hint;
  final void Function(String?)? onSaved;
 final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'filld is required';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        disabledBorder: buildBorder(kPrimaryColor),
        focusedErrorBorder: buildBorder(Colors.red),
      ),
    );
  }

  OutlineInputBorder buildBorder([mycolor]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: mycolor ?? Colors.white),
    );
  }
}
