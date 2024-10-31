import 'package:flutter/material.dart';
import '../../screens/video_player_screen.dart';
import 'cover_image.dart';

import '../../constant/constant.dart';

import '../../models/songs.dart';

class SmallCover extends StatelessWidget {
  final Song song; 

  const SmallCover({
    required this.song,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 18, 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MusicVideoPlayerPage(
                      song: song,
                    )),
          );
        },
        child: SizedBox(
          width: 115,
          child: Column(
            children: [
              SizedBox(
                width: 115,
                height: 115,
                child: CoverImage(imageName: song.imageName, borderRadius: 5.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        song.songName,
                        style: textCover,
                        maxLines: 2, // Allow up to 2 lines
                        overflow:
                            TextOverflow.ellipsis, // Show ellipsis if clipped
                        semanticsLabel:
                            'Song name: $song.songName', // Optional: for accessibility
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
