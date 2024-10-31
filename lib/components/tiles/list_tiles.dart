import 'package:flutter/material.dart';
import '../cover_images/cover_image.dart';

import '../../constant/constant.dart';

import '../../screens/video_player_screen.dart';
import '../../screens/playlist_screen.dart';
import '../../screens/artist_screen.dart';

import '../../functions/functions.dart';

import '../../models/songs.dart';
import '../../models/playlists.dart';
import '../../models/artists.dart';

class SongTile extends StatelessWidget {
  final Song song;

  const SongTile({
    required this.song,
    super.key,
  });

  String getSongInfo(Song song) {
    return "${song.artistName} • ${song.duration} • ${formatCount(song.viewsCount)} plays";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        onTap: () {
          // Navigate to the video page when tapped
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MusicVideoPlayerPage(
                      song: song,
                    )),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 16.0, vertical: 9.0), // Vertical padding set to 0
          child: Row(
            children: [
              SizedBox(
                width: 49,
                height: 49,
                child: CoverImage(imageName: song.imageName, borderRadius: 4.0),
              ),
              const SizedBox(width: 16.0), // Space between leading and title
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      song.songName,
                      style: textPlaylistTileTitle,
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
                size: 20.0,
                color: textSecondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlaylistTile extends StatelessWidget {
  final Playlist playlist;

  const PlaylistTile({
    required this.playlist,
    super.key,
  });

  String getPlaylistInfo(Playlist playlist) {
    return "Playlist • ${playlist.uploader} • ${playlist.numberOfSongs} tracks";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        onTap: () {
          // Navigate to the video page when tapped
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PlaylistPage(
                      playlist: playlist,
                    )),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 9.0),
          child: Row(
            children: [
              SizedBox(
                width: 55,
                height: 55,
                child: CoverImage(
                  imageName: playlist.playlistCover,
                  borderRadius: 2.5,
                ),
              ),
              const SizedBox(width: 16.0), // Space between leading and title
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      playlist.playlistName,
                      style: textPlaylistTileTitle,
                    ),
                    Text(
                      getPlaylistInfo(playlist),
                      style: textPlaylistTileSubtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.more_vert,
                size: 20.0,
                color: textSecondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ArtistTile extends StatelessWidget {
  final Artist artist;

  const ArtistTile({
    required this.artist,
    super.key,
  });

  String getArtistInfo(Artist artists) {
    return "Artist • ${formatCount(artists.followerCount)} subscribers";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        onTap: () {
          // Navigate to the video page when tapped
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArtistPage(
                      artists: artist,
                    )),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 9.0),
          child: Row(
            children: [
              SizedBox(
                width: 55,
                height: 55,
                child: CoverImage(
                  imageName: artist.artistProfile,
                  borderRadius: 50.0,
                ),
              ),
              const SizedBox(width: 16.0), // Space between leading and title
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      artist.artistName,
                      style: textPlaylistTileTitle,
                    ),
                    Text(
                      getArtistInfo(artist),
                      style: textPlaylistTileSubtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.more_vert,
                size: 20.0,
                color: textSecondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

