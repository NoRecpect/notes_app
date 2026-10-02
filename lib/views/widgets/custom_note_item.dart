import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/format_date.dart';

import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  final NoteModel note;
  const NoteItem({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EditNoteView()),
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title, style: TextStyle(fontSize: 30)),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  bottom: 16,
                  right: 18,
                ),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    color: Color(0xff89602e).withAlpha(145),
                    fontSize: 16,
                  ),
                ),
              ),

              trailing: GestureDetector(
                onTap: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                child: FaIcon(FontAwesomeIcons.trash, size: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text(
                formatDate(note.date),
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff89602e).withAlpha(175),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
