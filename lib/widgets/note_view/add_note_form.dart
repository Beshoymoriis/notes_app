import 'package:flutter/material.dart';

import '../custom_buttom.dart';
import '../custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            labelText: 'Title',
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            labelText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 24,
          ),
          CustomButtom(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
