import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';

class CustomViewBody extends StatelessWidget {
  const CustomViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 40,
          ),
          CustomAppBar()
        ],
      ),
    );
  }
}
