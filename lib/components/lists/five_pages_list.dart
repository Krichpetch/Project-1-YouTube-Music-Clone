import 'package:flutter/material.dart';
import '../tiles/five_page_list_tile.dart';

import '../../screens/video_player_screen.dart';

import '../../constant/constant.dart';

import '../../models/songs.dart';

class FivePagesList extends StatefulWidget {
  final List<Song> pageSongs_1;
  final List<Song> pageSongs_2;
  final List<Song> pageSongs_3;
  final List<Song> pageSongs_4;
  final List<Song> pageSongs_5;
  final String listTitle;

  const FivePagesList({
    super.key,
    required this.pageSongs_1,
    required this.pageSongs_2,
    required this.pageSongs_3,
    required this.pageSongs_4,
    required this.pageSongs_5,
    required this.listTitle,
  });

  @override
  _FivePagesListState createState() => _FivePagesListState();
}

class _FivePagesListState extends State<FivePagesList> {
  late final List<List<Song>> songPages;
  late PageController _pageController;
  double currentViewportFraction = 0.95;
  double currentOffset = -22;

  @override
  void initState() {
    super.initState();
    songPages = [
      widget.pageSongs_1,
      widget.pageSongs_2,
      widget.pageSongs_3,
      widget.pageSongs_4,
      widget.pageSongs_5,
    ];
    _pageController = PageController(viewportFraction: currentViewportFraction);
  }

  void _onPageChanged(int pageIndex) {
    setState(() {
      // Adjust viewport and offset for the last page
      currentViewportFraction =
          (pageIndex == songPages.length - 1) ? 1.0 : 0.95;
      currentOffset = (pageIndex == songPages.length - 1) ? 0 : -22;

      // Update the PageController with the new viewportFraction
      _pageController = PageController(
          viewportFraction: currentViewportFraction, initialPage: pageIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, bottom: 25.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.listTitle, style: textPlaylistTitle),
                  GestureDetector(
                    onTap: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MusicVideoPlayerPage(
                                  song: widget.pageSongs_1[0],
                                )),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3.0, right: 20.0),
                      child: Container(
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: highlightPrimary,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 1.5, horizontal: 0),
                          child: Center(
                            child: Text(
                              'Play all',
                              style: textButton,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 283,
              child: PageView.builder(
                controller: _pageController, // No shrinking, full width
                onPageChanged: _onPageChanged,
                itemCount: songPages.length,
                itemBuilder: (context, pageIndex) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Transform.translate(
                      offset:
                          Offset(currentOffset, 0), // Adjust offset dynamically
                      child: ListView.builder(
                        physics:
                            const NeverScrollableScrollPhysics(), // Disable scrolling
                        itemCount: songPages[pageIndex].length,
                        itemBuilder: (context, songIndex) {
                          return FivePagesSongTile(
                              song: songPages[pageIndex][songIndex]);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopTwentyList extends StatefulWidget {
  final List<Song> topSongs_1;
  final List<Song> topSongs_2;
  final List<Song> topSongs_3;
  final List<Song> topSongs_4;
  final List<Song> topSongs_5;
  final String listTitle;

  const TopTwentyList({
    super.key,
    required this.topSongs_1,
    required this.topSongs_2,
    required this.topSongs_3,
    required this.topSongs_4,
    required this.topSongs_5,
    required this.listTitle,
  });

  @override
  _TopTwentyListState createState() => _TopTwentyListState();
}

class _TopTwentyListState extends State<TopTwentyList> {
  late final List<List<Song>> songPages;
  late PageController _pageController;
  double currentViewportFraction = 0.96;
  double currentOffset = -28;

  @override
  void initState() {
    super.initState();
    songPages = [
      widget.topSongs_1,
      widget.topSongs_2,
      widget.topSongs_3,
      widget.topSongs_4,
      widget.topSongs_5,
    ];
    _pageController = PageController(viewportFraction: currentViewportFraction);
  }

  void _onPageChanged(int pageIndex) {
    setState(() {
      currentViewportFraction =
          (pageIndex == songPages.length - 1) ? 1.0 : 0.95;
      currentOffset = (pageIndex == songPages.length - 1) ? -8 : -28;

      _pageController = PageController(
          viewportFraction: currentViewportFraction, initialPage: pageIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, bottom: 25.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.listTitle, style: textPlaylistTitle),
                  const Column(
                    children: [
                      Icon(
                        Icons.navigate_next,
                        color: textSecondary,
                        size: 25,
                      ),
                      SizedBox(width: 52),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
                height: 283,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: songPages.length,
                  itemBuilder: (context, pageIndex) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Transform.translate(
                        offset: Offset(currentOffset, 0),
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: songPages[pageIndex].length,
                          itemBuilder: (context, songIndex) {
                            // Calculate the rank based on the pageIndex and songIndex
                            int rank = (pageIndex * 4) + (songIndex + 1);
                            return TopSongTile(
                              song: songPages[pageIndex][songIndex],
                              rank: rank,
                            );
                          },
                        ),
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
