import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_view/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ListView.builder(
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: NoteItem(),
        ),
      ),
    );
  }
}
