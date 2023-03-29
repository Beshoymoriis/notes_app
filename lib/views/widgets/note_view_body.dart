import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/note_list_view.dart';

class CustomViewBody extends StatelessWidget {
  const CustomViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: const [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
