import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: mediaQuery.size.height * 0.07),

          CustomAppBar(),
          SizedBox(height: mediaQuery.size.height * 0.02),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
