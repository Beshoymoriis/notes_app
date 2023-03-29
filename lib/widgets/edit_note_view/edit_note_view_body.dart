import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_view/custom_appbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(titlel: 'Edit Note', icon: Icons.check)
        ],
      ),
    );
  }
}
