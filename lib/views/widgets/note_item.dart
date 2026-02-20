import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/read_notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';

class NoteItem extends StatefulWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  State<NoteItem> createState() => _NoteItemState();
}

class _NoteItemState extends State<NoteItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditNoteView(note: widget.note),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(widget.note.color),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  textColor: Colors.black,
                  title: Text(
                    widget.note.titel,
                    style: const TextStyle(fontSize: 25),
                  ),

                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      widget.note.subTitel,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black.withValues(alpha: 0.5),
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      context.read<ReadNotesCubit>().deleteNote(widget.note);
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(
                    widget.note.date,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
