import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            ),
            backgroundColor: Color(0xff2d2d2d),
            context: context,
            builder: (context) => AddNoteBottomSheet(),
          );
        },
        child: Icon(Icons.add, color: Colors.black.withAlpha(200), size: 30),
      ),

      body: const NotesViewBody(),
    );
  }
}
