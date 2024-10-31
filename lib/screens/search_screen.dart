import 'package:flutter/material.dart';

import '../constant/constant.dart';

import '../components/navbar_assets/search_bar.dart';
import '../components/tiles/list_tiles.dart';

import '../models/songs.dart';
import '../models/artists.dart';
import '../models/playlists.dart';

import '../functions/functions.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<Object> allItems = [];

  void fetchAllItems() {
    allItems.addAll(allArtists);
    allItems.addAll(allPlaylists);
    allItems.addAll(allSongs); 
  }

  @override
  void initState() {
    super.initState();
    fetchAllItems();
  }

  List<Object> filteredItems = [];

  void filterItems(String query) {
    setState(() {
      filteredItems = allItems.where((item) {
        if (item is Artist) {
          // Filter by artistName for Artist objects
          return item.artistName.toLowerCase().contains(query.toLowerCase());
        } else if (item is Playlist) {
          // Filter by playlistName for Playlist objects
          return item.playlistName.toLowerCase().contains(query.toLowerCase());
        } else if (item is Song) {
          // Filter by songName for Song objects
          return item.songName.toLowerCase().contains(query.toLowerCase());
        }
        print("Current query: $query");
        print("Filtered items count: ${filteredItems.length}");
        print("Filtered items count: ${allItems.length}");
        return false;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themePrimary,
      appBar: AppBar(
        backgroundColor: themePrimary,
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
        title: YouTubeSearchBar(onSearch: filterItems),
        titleSpacing: 0,
        actions: const [
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: themeSecondary,
            child: IconButton(
              icon: Icon(
                Icons.mic,
                color: textPrimary,
                size: 22,
              ),
              onPressed: doNothing,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: themeSecondary,
            child: IconButton(
              icon: Icon(
                Icons.multitrack_audio_rounded,
                color: textPrimary,
                size: 22,
              ),
              onPressed: doNothing,
            ),
          ),
          SizedBox(
            width: 3,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                var item = filteredItems[index];

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
            ),
          ),
        ],
      ),
    );
  }
}
