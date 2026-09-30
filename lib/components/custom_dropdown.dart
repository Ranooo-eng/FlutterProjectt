import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final TextEditingController controller;
  final String Myhint;

  const CustomDropdown({
    super.key, 
    required this.controller, 
    required this.Myhint
  });

  @override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: DropdownMenu<String>(
      width: MediaQuery.of(context).size.width - 32,
      controller: controller,
      hintText: Myhint,
      dropdownMenuEntries: const [
        DropdownMenuEntry(value: "Laki-laki", label: "Laki-laki"),
        DropdownMenuEntry(value: "Perempuan", label: "Perempuan"),
      ],
    ),
  );
}
}