import 'package:flutter/material.dart';
import 'package:note_app/constans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Title',
        labelStyle: const TextStyle(color: kPrimaryColor, fontSize: 18),
        border: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
