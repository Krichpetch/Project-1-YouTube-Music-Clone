import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'cover_image.dart';
import '../../screens/playlist_screen.dart';

import '../../constant/constant.dart';
import '../../models/playlists.dart';

class BigCover extends StatelessWidget {

  final Playlist playlist;

  const BigCover({
    required this.playlist,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 18, 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PlaylistPage(
                      playlist: playlist,
                    )),
          );
        },
        child: SizedBox(
          width: 175,
          child: Column(
            children: [
              SizedBox(height: 175,
                child: CoverImage(imageName: playlist.playlistCover, borderRadius: 8.0)),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 175),
                            child: Text(
                              playlist.playlistName,
                              style: textBigCover,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        const SizedBox(height: 5),
                         ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 175),
                            child: Text(
                              playlist.artists,
                              style: textBigCoverSubtitle,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      )
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
