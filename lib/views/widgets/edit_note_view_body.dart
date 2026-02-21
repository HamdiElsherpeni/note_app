import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/read_notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_failed.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? titel, contant;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(
            icon: Icons.check,
            text: 'Edit Note',
            onPreassed: () {
              widget.note.titel = titel ?? widget.note.titel;
              widget.note.subTitel = contant ?? widget.note.subTitel;
              widget.note.save();
              BlocProvider.of<ReadNotesCubit>(context).featchAllNote();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 35),
          CustomTextFailed(
            hint: widget.note.titel,
            onChanged: (value) {
              titel = value;
            },
          ),
          const SizedBox(height: 15),
          CustomTextFailed(
            maxLines: 8,
            hint: widget.note.subTitel,
            onChanged: (value) {
              contant = value;
            },
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
