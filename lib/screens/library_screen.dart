import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../constant/constant.dart';

import '../components/navbar_assets/category_chip.dart';
import '../components/tiles/list_tiles.dart';
import '../components/navbar_assets/search_button.dart';
import '../components/navbar_assets/profile_button.dart';

import '../models/user.dart';
import '../models/songs.dart';
import '../models/playlists.dart';
import '../models/artists.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});
  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  bool lastStatus = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      fetchLikedSongs();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themePrimary,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              leadingWidth: 125,
              leading: SizedBox(
                width: 125,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text("Library",
                        style: textTitle.copyWith(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                          color: themeSecondary, // Button color
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: textSecondary, // Icon color
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              actions: const [
                Icon(
                  Icons.history,
                  size: 26,
                  color: textPrimary,
                ),
                SizedBox(
                  width: 16,
                ),
                SearchButton(),
                ProfileButton(),
              ],
              pinned: false,
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
                        CategoryChip(label: 'Playlists'),
                        CategoryChip(label: 'Songs'),
                        CategoryChip(label: 'Albums'),
                        CategoryChip(label: 'Artists'),
                        CategoryChip(label: 'Podcasts'),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 20.0,
                      bottom: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Recent Activities",
                                  style: textBigCoverSubtitle),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: textSecondary, // Icon color
                                size: 25,
                              )
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.grid_view,
                          color: textSecondary, // Icon color
                          size: 22,
                        ),
                      ],
                    )),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    var item = userItems[index];

                    if (item is Song) {
                      return SongTile(song: item);
                    } else if (item is Playlist) {
                      return PlaylistTile(playlist: item);
                    } else if (item is Artist) {
                      return ArtistTile(artist: item);
                    } else {
                      // Handle other types or provide a fallback
                      return const SizedBox.shrink();
                    }
                  },
                  childCount: userItems.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
