import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notesList;
  List<NoteModel> fetchAllNotes() {
    Box<NoteModel> boxNotes = Hive.box<NoteModel>(kNotesBox);
    emit(NotesSuccess());

    return notesList = boxNotes.values.toList();

    // Iterable<NoteModel> boxValues = boxNotes.values;
    // List<NoteModel> notes = [];
    // for (NoteModel note in boxValues) {
    //   notes.add(note);
    // }
    // emit(NotesSuccess(notes));

    //faster and perfect
    // emit(NotesSuccess(boxNotes.values.toList()));
  }
}
