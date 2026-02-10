import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_failed.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(icon: Icons.add, text: 'Edit Note'),
        SizedBox(height: 35),
        CustomTextFailed(hint: 'Titel'),
        SizedBox(height: 15),
        CustomTextFailed(maxLines: 8, hint: 'Contant'),
        SizedBox(height: 15),
      ],
    );
  }
}
