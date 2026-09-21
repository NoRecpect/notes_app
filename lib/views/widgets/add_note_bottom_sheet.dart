import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            CustomTextField(hintText: "Title"),
            SizedBox(height: 25),
            CustomTextField(hintText: "Content", maxLines: 5),
            SizedBox(height: 50),
            CustomButton(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
