import 'package:flutter/material.dart';
import '../../constant/constant.dart';
import '../animation/scrolling_text.dart';

class SongTitlePlayer extends StatelessWidget {
  final String songName;
  final String artist;

  const SongTitlePlayer({
    super.key,
    required this.songName,
    required this.artist,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScrollingText(
                title: songName,
                textStyle: textTitle,
              ),
              Text(artist, style: textSubTitle),
            ],
          ),
        ),
      ],
    );
  }
}