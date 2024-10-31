import 'package:flutter/material.dart';
import '../cover_images/cover_image.dart';

import '../../constant/constant.dart';

import '../../screens/video_player_screen.dart';

import '../../functions/functions.dart';

import '../../models/songs.dart';


class FivePagesSongTile extends StatelessWidget {
  final Song song;

  const FivePagesSongTile({
    required this.song,
    super.key,
  });

  String getSongInfo(Song song) {
    return "${song.artistName} • ${formatCount(song.viewsCount)} plays";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
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
          height: 70,
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 0), // Adjust vertical padding as needed
            child: Row(
              children: [
                SizedBox(
                  width: 55,
                  height: 55,
                  child: CoverImage(
                    imageName: song.imageName,
                    borderRadius: 3.0,
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        song.songName,
                        style: textPlaylistTileTitle.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        getSongInfo(song),
                        style: textPlaylistTileSubtitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.more_vert,
                  size: 23.0,
                  color: textPrimary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopSongTile extends StatelessWidget {
  final Song song;
  final int rank; 

  const TopSongTile({
    required this.song,
    required this.rank,
    super.key,
  });

  String getSongInfo(Song song) {
    return "${song.artistName} • ${formatCount(song.viewsCount)} plays";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MusicVideoPlayerPage(
                song: song, 
              ),
            ),
          );
        },
        child: SizedBox(
          height: 70,
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: 35,
                    child: Center(
                      child: Text(
                        '$rank', 
                        style: textPlaylistTileTitle.copyWith(
                          color: textSecondary,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                SizedBox(
                  width: 55,
                  height: 55,
                  child: CoverImage(
                    imageName: song.imageName, 
                    borderRadius: 3.0,
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        song.songName,
                        style: textPlaylistTileTitle.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          getSongInfo(song),
                          style: textPlaylistTileSubtitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.more_vert,
                  size: 23.0,
                  color: textPrimary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
