import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          CustomAppBar(icon: Icons.check, title: "Edit Note "),
          SizedBox(height: 50),
          CustomTextField(hintText: "Title"),
          SizedBox(height: 15),
          CustomTextField(hintText: "Content", maxLines: 5),
        ],
      ),
    );
  }
}
