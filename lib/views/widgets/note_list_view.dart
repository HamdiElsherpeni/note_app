import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/read_notes_cubit.dart';
import 'package:note_app/views/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit, ReadNotesState>(
      builder: (context, state) {
        if (state is ReadNotesSuccess) {
          return ListView.builder(
            itemCount: state.notes.length,
            itemBuilder: (context, index) {
              return NoteItem(note: state.notes[index]);
            },
          );
        } else {
          return const Center(child: Text('There was an Errorr'));
        }
      },
    );
  }
}
