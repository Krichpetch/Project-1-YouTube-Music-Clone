import 'package:flutter/material.dart';
import 'package:youtube_music_clone/components/playlists_page/artist_info.dart';
import '../constant/constant.dart';
import '../components/tiles/list_tiles.dart';

import '../models/artists.dart';

class ArtistPage extends StatelessWidget {
  final Artist artists; 

  const ArtistPage({
    required this.artists,
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
                artists.artistName,
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
          ArtistInfo(artist: artists),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return SongTile(song: artists.songs[index]);
              },
              childCount: artists.songs.length,
            ),
          ),
        ],
      ),
    );
  }
}


