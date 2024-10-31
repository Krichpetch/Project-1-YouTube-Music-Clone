import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../constant/constant.dart';

class CategoryChip extends StatelessWidget {
  final String label;
  const CategoryChip({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        child: Chip(
          label: Text(label, style: textFilter),
          backgroundColor: themeSecondary,
        ),
      ),
    );
  }
}