import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'read_notes_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial());
  void featchAllNote() {
    try {
    final   notesBox = Hive.box<NoteModel>(kNotesBox);
  final    List<NoteModel> notes = notesBox.values.toList();
      emit(ReadNotesSuccess(notes));
    } catch (e) {
      emit(ReadNotesFailuer(e.toString()));
    }
  }
}
