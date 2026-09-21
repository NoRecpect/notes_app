import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Color(0xffffcd7a),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text("Flutter Tips", style: TextStyle(fontSize: 30)),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16, right: 18),
              child: Text(
                """if you can't explain it simply, 
then you don't understand
it well enough""",
                style: TextStyle(
                  color: Color(0xff89602e).withAlpha(145),
                  fontSize: 16,
                ),
              ),
            ),

            trailing: FaIcon(FontAwesomeIcons.trash, size: 25),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text(
              "May 21 2026",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xff89602e).withAlpha(175),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
