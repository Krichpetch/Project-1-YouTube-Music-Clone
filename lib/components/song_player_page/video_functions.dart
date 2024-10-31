import 'package:flutter/material.dart';
import './video_button.dart';

import '../../models/songs.dart';

import '../../functions/functions.dart';


class VideoFunctions extends StatelessWidget {

  final Song song;

  const VideoFunctions({

    required this.song,
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 22),
        SizedBox(
          height: 35,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 10),
                LikeDislikeButton(song: song, likeCount: formatCount(song.likeCount)), 
                VideoButton(
                  icon: Icons.comment_outlined,
                  label: formatCount(song.commentsCount),
                ),
                const VideoButton(
                  icon: Icons.playlist_add_sharp,
                  label: "Save",
                ),
                const VideoButton(
                  icon: Icons.share,
                  label: "Share",
                ),
                const VideoButton(
                  icon: Icons.file_download_outlined,
                  label: "Download",
                ),
                const VideoButton(
                  icon: Icons.radio,
                  label: "Radio",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
