import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String myHint;

  const CustomTextfield({
    super.key,
    required this.myHint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: myHint,
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: const EdgeInsets.all(16),
      ),
    );
  }
}