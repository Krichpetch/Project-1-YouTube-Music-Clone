import 'package:flutter/material.dart';

import '../../../constant/constant.dart';

class GenreChip extends StatelessWidget {
  final String label;
  final Color borderColor;

  const GenreChip({
    super.key,
    required this.label,
    this.borderColor = Colors.white, // Default color if not specified
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 15.0),
      child: Container(
        height: 47,
        width: 170,
        padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
        decoration: BoxDecoration(
          color: themeSecondary, // Background color for the chip
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 8,
              height: 50,
              decoration: BoxDecoration(
                color: borderColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0),
                ),
              ),
            ),
            const SizedBox(width: 13), // Space between border and text
            Text(
              label,
              style: textPlaylistTileTitle
            ),
          ],
        ),
      ),
    );
  }
}
