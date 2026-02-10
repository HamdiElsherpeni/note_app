import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 14),
      child: EditNoteViewBody(),
    )));
  }
}
