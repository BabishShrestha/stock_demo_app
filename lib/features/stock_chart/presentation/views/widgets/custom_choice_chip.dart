import 'package:flutter/material.dart';

class CustomChoiceChip extends StatelessWidget {
  final Function(bool)? onSelected;
  final bool selected;
  final String labelText;

  const CustomChoiceChip(
      {super.key,
      this.onSelected,
      required this.selected,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      showCheckmark: false,
      label:
          Text(labelText, style: const TextStyle(fontWeight: FontWeight.bold)),
      selectedColor: const Color(0xff5EFBDC),
      backgroundColor: Colors.white,
      // no border
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Colors.transparent,
          )),
      selected: selected,
      onSelected: onSelected,
    );
  }
}
