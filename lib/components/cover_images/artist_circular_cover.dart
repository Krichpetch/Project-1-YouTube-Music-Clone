import 'package:flutter/material.dart';
import '../../constant/constant.dart';

import '../../screens/artist_screen.dart';

import '../../models/artists.dart';

import '../../functions/functions.dart';

class ArtistCover extends StatelessWidget {
  final Artist artist;
  late final String followers;

  ArtistCover({
    required this.artist,
    super.key,
  }) {
    // Initialize the followers variable in the constructor
    followers = "${formatCount(artist.followerCount)} Subscribers";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 18, 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArtistPage(
                      artists: artist,
                    )),
          );
        },
        child: SizedBox(
          width: 175,
          child: Column(
            children: [
              CircleAvatar(
                radius: 87.5,
                backgroundImage:
                    AssetImage('assets/covers/${artist.artistProfile}.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 175),
                          child: Text(
                            artist.artistName,
                            style: textBigCover,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 5),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 175),
                          child: Text(followers,
                            style: textBigCoverSubtitle,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
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
