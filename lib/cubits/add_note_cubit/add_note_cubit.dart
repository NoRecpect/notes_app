import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  // bool isLoading = false;
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async {
    //  8 isLoading = true;
    emit(AddNoteLoading());
    try {
      Box notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      // isLoading = false;
      print(note);
      emit(AddNoteSuccess());
    } catch (e) {
      // isLoading = false;
      emit(AddNoteFailure(e.toString()));
    }
  }
}
