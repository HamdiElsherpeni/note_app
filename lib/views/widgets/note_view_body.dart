import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(children: [CustomAppBar()]),
    );
  }
}
