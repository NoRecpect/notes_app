import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel note;
  const EditNoteViewBody({super.key, required this.note});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          CustomAppBar(
            icon: Icons.check,
            title: "Edit Note ",
            onIconPressed: () {
              editNote();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 50),
          CustomFormTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          SizedBox(height: 15),
          CustomFormTextField(
            onChanged: (value) {
              subTitle = value;
            },
            hintText: widget.note.subTitle,
            maxLines: 5,
          ),
        ],
      ),
    );
  }

  void editNote() {
    widget.note.title = title ?? widget.note.title;
    widget.note.subTitle = subTitle ?? widget.note.subTitle;
    widget.note.save();
  }
}
