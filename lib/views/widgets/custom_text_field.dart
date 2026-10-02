import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
  });
  final String hintText;
  final int maxLines;
  final void Function(String? value)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "field must have data";
        } else {
          return null;
        }
      },

      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white60, fontSize: 18),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
