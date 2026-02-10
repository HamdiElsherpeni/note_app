import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/note_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          CustomAppBar(icon: Icons.delete, text: 'Notes'),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
