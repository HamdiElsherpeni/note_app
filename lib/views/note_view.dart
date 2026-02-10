import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.0),
      child: NoteViewBody(),
    )),);
  }
}