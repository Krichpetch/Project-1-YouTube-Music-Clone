import 'package:flutter/material.dart';
import 'package:youtube_music_clone/constant/constant.dart';


import '../../models/shorts.dart';

import '../../functions/functions.dart';

class ShortsButton extends StatelessWidget {
  final Shorts short;

  const ShortsButton({
    required this.short,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 16.0,
      top: MediaQuery.of(context).size.height * 0.32,
      child: Column(
        children: [
          _buildIconButton(Icons.thumb_up, formatCount(short.likeCount)),
          _buildIconButton(Icons.comment, formatCount(short.commentsCount)),
          _buildIconButton(Icons.bookmark, "Save"),
          _buildIconButton(Icons.short_text, "Shorts"),
          _buildIconButton(Icons.share, "Share"),
          _buildIconButton(Icons.play_arrow, "Play"),
        ],
      ),
      
    );
  }
}

Widget _buildIconButton(IconData icon, String label) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.3),
    child: Column(
      children: [
        CircleAvatar(radius: 24,backgroundColor: const Color.fromARGB(111, 28, 28, 28),
          child: Icon(icon, color: textPrimary, size: 18)),
        const SizedBox(height: 4),
        Text(
          label,
          style: textTime.copyWith(color: textPrimary),
        ),
      ],
    ),
  );
}
