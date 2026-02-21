import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'read_notes_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial());
  List<NoteModel> notes = [];
  void featchAllNote() {
    final notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(ReadNotesSuccess(notes));
  }

  deleteNote(NoteModel note) {
    final box = Hive.box<NoteModel>(kNotesBox);

    box.delete(note.key); // 🔥 ده الصح

    featchAllNote();
    emit(ReadNotesSuccess(notes));
  }
}
