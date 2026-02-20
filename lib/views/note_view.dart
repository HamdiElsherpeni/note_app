import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/notes_cubit/read_notes_cubit.dart';
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
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return const AddNoteBody();
            },
          );
        },
        child: const Icon(Icons.add, color: Colors.black),
      ),
      body:const  SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child:  NoteViewBody(),
        ),
      ),
    );
  }
}
