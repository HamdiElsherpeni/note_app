import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_failed.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child:  Column(
        children: [
          CustomAppBar(icon: Icons.check, text: 'Edit Note'),
          SizedBox(height: 35),
          CustomTextFailed(hint: 'Titel',),
          SizedBox(height: 15),
          CustomTextFailed(maxLines: 8, hint: 'Contant'),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
