import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../constant/constant.dart';

import '../components/lists/one_row_list.dart';
import '../components/lists/five_pages_list.dart';
import '../components/explore_page/explore_buttons.dart';
import '../components/navbar_assets/search_button.dart';
import '../components/navbar_assets/profile_button.dart';

import '../models/songs.dart';
import '../models/playlists.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});
  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
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
                SearchButton(),
                ProfileButton(),
              ],
              // leading: _isShrink ? const BackButton() : null,
              pinned: true,
              backgroundColor: Colors.black,
            )
          ],
          body: CustomScrollView(
            slivers: [
              const ExploreButtonRow(),
              PlaylistRecommended(playlists: [
                secretLoveSongs,
                cryALittle,
                thaiMusic,
                japanBops,
              ], title: "New Albums and Singles"),
              TopTwentyList(
                topSongs_1: [song_006, song_005, song_018, song_014],
                topSongs_2: [song_012, song_020, song_007, song_015],
                topSongs_3: [song_019, song_008, song_001, song_002],
                topSongs_4: [song_004, song_009, song_013, song_011],
                topSongs_5: [song_010, song_016, song_003, song_017],
                listTitle: "Top Songs",
              ),
              const MoodAndGenre()
            ],
          ),
        ),
      ),
    );
  }
}
