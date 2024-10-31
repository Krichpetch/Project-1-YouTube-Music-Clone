import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../components/playlists_page/playlist_info.dart';
import '../components/tiles/list_tiles.dart';

import '../models/playlists.dart';

class PlaylistPage extends StatelessWidget {
  final Playlist playlist;

  const PlaylistPage({
    required this.playlist,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themePrimary,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: themePrimary,
            elevation: 0,
            floating: false,
            pinned: true,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              borderRadius: BorderRadius.circular(50),
              child: const Icon(
                Icons.arrow_back_sharp,
                size: 25,
                color: textSecondary,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                playlist.playlistName,
                style: textTitle,
              ),
            ),
            actions: const [
              Icon(
                Icons.search_sharp,
                size: 28,
                color: textSecondary,
              ),
              SizedBox(width: 15),
            ],
          ),
          PlaylistInfo(
            playlist: playlist,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return SongTile(song: playlist.songs[index]);
              },
              childCount: playlist.songs.length,
            ),
          ),
        ],
      ),
    );
  }
}
