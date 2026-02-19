part of 'read_notes_cubit.dart';

@immutable
sealed class ReadNotesState {}

final class ReadNotesInitial extends ReadNotesState {}

final class ReadNotesLoading extends ReadNotesState {}

final class ReadNotesSuccess extends ReadNotesState {
  ReadNotesSuccess(this.notes);

  final List<NoteModel> notes;
}

final class ReadNotesFailuer extends ReadNotesState {
  ReadNotesFailuer(this.errorMassege);

  final String errorMassege;
}
