import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            labelText: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            labelText: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
