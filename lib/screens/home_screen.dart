import 'package:flutter/material.dart';
import 'package:youtube_music_clone/models/user.dart';

import '../constant/constant.dart';

import '../components/lists/two_rows_list.dart';
import '../components/lists/one_row_list.dart';
import '../components/navbar_assets/category_chip.dart';
import '../components/lists/five_pages_list.dart';
import '../components/navbar_assets/search_button.dart';
import '../components/navbar_assets/profile_button.dart';

import '../models/songs.dart';
import '../models/playlists.dart';
import '../models/artists.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themePrimary,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              leading: Transform.scale(
                scale: 0.68,
                child: Image.asset('assets/icons/YT_Music_long_White.png'),
              ),
              automaticallyImplyLeading: false,
              leadingWidth: 125,
              actions: const [
                Icon(
                  Icons.notifications_none,
                  size: 26,
                  color: textPrimary,
                ),
                SizedBox(
                  width: 16,
                ),
                SearchButton(),
       
                ProfileButton(),
          
              ],
              pinned: true,
              backgroundColor: Colors.black,
            )
          ],
          body: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(top: 9.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        CategoryChip(label: 'Relax'),
                        CategoryChip(label: 'Sleep'),
                        CategoryChip(label: 'Romance'),
                        CategoryChip(label: 'Sad'),
                        CategoryChip(label: 'Energy'),
                      ],
                    ),
                  ),
                ),
              ),
              TwoRowsList(
                songs: [
                  song_014,
                  song_006,
                  song_011,
                  song_015,
                  song_005,
                  song_020,
                  song_016,
                  song_007,
                ],
              ),
              SimilarToList(
                subtitle: "Similar to",
                title: "Bruno Mars",
                image: brunoMars.artistProfile,
                items: [
                  vibin,
                  brunoMars,
                  japanBops,
                  top20Songs,
                  likedPlaylist,
                ],
              ),
              PlaylistRecommended(
                title: "Playlists For You",
                playlists: [
                  secretLoveSongs,
                  cryALittle,
                  vibin,
                  likedPlaylist,
                ],
              ),
              FivePagesList(
                pageSongs_1: [song_001, song_002, song_003, song_004],
                pageSongs_2: [song_005, song_006, song_007, song_008],
                pageSongs_3: [song_009, song_010, song_011, song_012],
                pageSongs_4: [song_013, song_014, song_015, song_016],
                pageSongs_5: [song_017, song_018, song_019, song_020],
                listTitle: "Trending Songs for you",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
