import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../cover_images/small_cover.dart';
import '../playlists_page/playlist_title.dart';

import '../../models/songs.dart';
import '../../models/user.dart';

class TwoRowsList extends StatelessWidget {
  final List<Song> songs;

  const TwoRowsList({
    super.key,
    required this.songs,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 8.0),
        child: Column(
          children: [
            const PlaylistTitle(
              title: "Listen Again",
              subtitle: username,
              image: userProfileImage,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SmallCover(song: songs[0]),
                              SmallCover(song: songs[1]),
                              SmallCover(song: songs[2]),
                              SmallCover(song: songs[3]),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmallCover(song: songs[4]),
                            SmallCover(song: songs[5]),
                            SmallCover(song: songs[6]),
                            SmallCover(song: songs[7]),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}