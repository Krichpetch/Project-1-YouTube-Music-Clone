import 'package:flutter/material.dart';
import '../cover_images/big_cover.dart';
import '../cover_images/artist_circular_cover.dart';
import '../playlists_page/playlist_title.dart';
import '../explore_page/genre_chip.dart';

import '../../constant/constant.dart';

import '../../screens/blank_screen.dart';

import '../../models/playlists.dart';
import '../../models/artists.dart';

class SimilarToList extends StatelessWidget {
  final List<dynamic> items;
  final String title;
  final String subtitle;
  final String image;

  const SimilarToList(
      {required this.items,
      required this.title,
      required this.subtitle,
      required this.image,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, bottom: 25.0),
        child: Column(
          children: [
            PlaylistTitle(
              title: title,
              subtitle: subtitle,
              image: image,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Row(
                  children: items.map((item) {
                    if (item is Playlist) {
                      return BigCover(
                        playlist: item,
                      );
                    } else if (item is Artist) {
                      return ArtistCover(
                        artist: item,
                      );
                    }
                    return Container();
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlaylistRecommended extends StatelessWidget {
  final List<Playlist> playlists;
  final String title;

  const PlaylistRecommended(
      {required this.playlists, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, bottom: 25.0),
        child: Column(
          children: [
            SizedBox(
              height: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: textPlaylistTitle),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BlankScreen(
                                      label:
                                          "All recommended playlists goes here",
                                    )),
                          );
                        },
                        child: const Icon(
                          Icons.navigate_next,
                          color: textSecondary,
                          size: 25,
                        ),
                      ),
                      const SizedBox(width: 52),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: playlists.map((playlist) {
                  return BigCover(
                    playlist: playlist,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MoodAndGenre extends StatelessWidget {
  const MoodAndGenre({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          bottom: 25.0,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Moods & Genres", style: textPlaylistTitle),
                   Column(
                    children: [
                     InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BlankScreen(
                                      label:
                                          "All Moods and Genres goes here",
                                    )),
                          );
                        },
                        child: const Icon(
                          Icons.navigate_next,
                          color: textSecondary,
                          size: 25,
                        ),
                      ),
                      const SizedBox(width: 52),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Column(
                  children: [
                    const GenreChip(
                      label: "J-pop",
                      borderColor: Colors.pinkAccent,
                    ),
                    GenreChip(
                      label: "Romance",
                      borderColor: Colors.red.shade900,
                    ),
                    GenreChip(
                      label: "Thai",
                      borderColor: Colors.blue.shade200,
                    ),
                  ],
                ),
                const Column(
                  children: [
                    GenreChip(
                      label: "Feel Good",
                      borderColor: Colors.greenAccent,
                    ),
                    GenreChip(
                      label: "Energetic",
                      borderColor: Colors.yellowAccent,
                    ),
                    GenreChip(
                      label: "K-Pop",
                      borderColor: Colors.purpleAccent,
                    ),
                  ],
                ),
                Column(
                  children: [
                    GenreChip(
                      label: "Rock",
                      borderColor: Colors.red.shade700,
                    ),
                    GenreChip(
                      label: "Sad",
                      borderColor: Colors.blue.shade800,
                    ),
                    GenreChip(
                      label: "Classical",
                      borderColor: Colors.grey.shade400,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const GenreChip(
                      label: "Workout",
                      borderColor: Colors.orange,
                    ),
                    GenreChip(
                      label: "Funk",
                      borderColor: Colors.yellow.shade800,
                    ),
                    const GenreChip(
                      label: "Soul",
                      borderColor: Colors.white,
                    ),
                  ],
                ),
                Column(
                  children: [
                    GenreChip(
                      label: "Electronic",
                      borderColor: Colors.blueGrey.shade600,
                    ),
                    const GenreChip(
                      label: "Hip-Hop",
                      borderColor: Colors.greenAccent,
                    ),
                    const GenreChip(
                      label: "Country",
                      borderColor: Colors.brown,
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
