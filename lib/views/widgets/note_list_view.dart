import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/read_notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NoteModel> notes = BlocProvider.of<ReadNotesCubit>(
      context,
    ).notes;
    return BlocBuilder<ReadNotesCubit, ReadNotesState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return NoteItem(note: notes[index]);
          },
        );
      },
    );
  }
}
