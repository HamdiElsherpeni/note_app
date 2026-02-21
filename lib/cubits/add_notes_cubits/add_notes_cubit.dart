import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  Color color= Color(0xff416372);
  void addNotes(NoteModel note) async {
    note.color=color.value;
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      
      await notesBox.add(note);
      emit(AddNotesSucess());
    } catch (e) {
     emit( AddNotesFailler(e.toString()));
    }
  }
}
