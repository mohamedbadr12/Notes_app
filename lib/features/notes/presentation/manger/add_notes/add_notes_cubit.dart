import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/core/utils/constant.dart';
import 'package:notes_app/features/notes/data/model/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NoteModel noteModel)async{
    emit(AddNotesLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      emit(AddNotesSuccess());
         await noteBox.add(noteModel);
    }  catch (e) {
       emit(AddNotesFailure(error: e.toString()));
    }


  }
}
