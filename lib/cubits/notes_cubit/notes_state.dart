part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

// final class NotesLoading extends NotesState {}
// we don't need success state
final class NotesSuccess extends NotesState {}

// we don't need the failure state because we are fetching data in list
// final class NotesFailure extends NotesState {
//   final String errorMessage;

//   NotesFailure(this.errorMessage);
// }
