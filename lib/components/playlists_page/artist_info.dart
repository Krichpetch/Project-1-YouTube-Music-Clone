import 'package:flutter/material.dart';
import '../../constant/constant.dart';
import '../cover_images/cover_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../screens/video_player_screen.dart';

import '../song_player_page/video_controller_button.dart';

import '../../functions/functions.dart';

import '../../models/artists.dart';

class ArtistInfo extends StatelessWidget {
  final Artist artist;

  const ArtistInfo({
    required this.artist,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: SizedBox(
                height: 240,
                width: 240,
                child: CoverImage(
                  imageName: artist.artistProfile,
                  borderRadius: 150.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                artist.artistName,
                style: textTitle,
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "${formatCount(artist.followerCount)} subscribers",
              style: textSubTitle,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PlaylistButton(
                    icon: Icons.save_alt_sharp,
                    iconSize: 20.0,
                    backgroundColor: themeSecondary,
                    color: textPrimary,
                    radius: 24.0,
                    onPressed: () {}, // Replace with your function
                  ),
                  PlaylistButton(
                    icon: Icons.add_box_outlined,
                    iconSize: 20.0,
                    backgroundColor: themeSecondary,
                    color: textPrimary,
                    radius: 24.0,
                    onPressed: () {}, // Replace with your function
                  ),
                  PlaylistButton(
                    icon: Icons.play_arrow,
                    iconSize: 38.0,
                    backgroundColor: textPrimary,
                    color: themePrimary,
                    radius: 35.0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MusicVideoPlayerPage(
                                  song: artist.songs[0],
                                )),
                      );
                    },
                  ),
                  PlaylistButton(
                    icon: FontAwesomeIcons.share,
                    iconSize: 16.0,
                    backgroundColor: themeSecondary,
                    color: textPrimary,
                    radius: 24.0,
                    onPressed: () {},
                  ),
                  PlaylistButton(
                    icon: Icons.more_vert,
                    iconSize: 20.0,
                    backgroundColor: themeSecondary,
                    color: textPrimary,
                    radius: 24.0,
                    onPressed: () {}, // Replace with your function
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
