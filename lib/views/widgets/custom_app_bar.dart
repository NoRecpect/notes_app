import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.onIconPressed,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  final void Function()? onIconPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            // fontWeight: FontWeight.bold,
            fontSize: 27,
          ),
        ),

        CustomIconButton(icon: icon, onPressed: onIconPressed),
      ],
    );
  }
}
