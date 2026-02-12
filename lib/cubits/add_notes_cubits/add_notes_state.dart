part of 'add_notes_cubit.dart';

@immutable
sealed class AddNotesState {}

final class AddNotesInitial extends AddNotesState {}

final class AddNotesLoading extends AddNotesState {}

final class AddNotesSucess extends AddNotesState {}

final class AddNotesFailler extends AddNotesState {
  AddNotesFailler(this.errorMassge);

  final String errorMassge;
}
