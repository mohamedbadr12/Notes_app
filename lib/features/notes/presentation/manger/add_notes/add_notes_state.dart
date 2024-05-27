part of 'add_notes_cubit.dart';

abstract class AddNotesState extends Equatable {
  const AddNotesState();
  @override
  List<Object> get props => [];
}

class AddNotesInitial extends AddNotesState {}
class AddNotesLoading extends AddNotesState {}
class AddNotesSuccess extends AddNotesState {}
class AddNotesFailure extends AddNotesState {
  final String error;
  const AddNotesFailure({required this.error});
}
