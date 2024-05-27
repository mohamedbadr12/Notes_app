part of 'notes_cubit.dart';

abstract class NotesState extends Equatable {
  const NotesState();

  @override
  List<Object> get props => [];
}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  const NotesSuccess({required this.notes});
}

class NotesFailure extends NotesState {
  final String error;

  const NotesFailure({required this.error});
}
