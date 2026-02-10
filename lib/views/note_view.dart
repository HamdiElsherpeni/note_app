import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/widgets/add_note.dart';
import 'package:note_app/views/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNote();
            },
          );
        },
        child: const Icon(Icons.add,color: Colors.black,),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: NoteViewBody(),
        ),
      ),
    );
  }
}
