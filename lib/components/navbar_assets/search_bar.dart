import 'package:flutter/material.dart';

import '../../constant/constant.dart';

class YouTubeSearchBar extends StatefulWidget {
  final ValueChanged<String> onSearch;

  const YouTubeSearchBar({super.key, required this.onSearch});

  @override
  State<YouTubeSearchBar> createState() => _YouTubeSearchBarState();
}

class _YouTubeSearchBarState extends State<YouTubeSearchBar> {
  final TextEditingController _controller = TextEditingController();

  void _clearSearch() {
    _controller.clear();
    widget.onSearch(''); // Optionally handle empty search
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      width: 260,
      child: TextField(
        style: textSubTitle.copyWith(color: textPrimary,fontSize: 16),
        controller: _controller,
        onChanged: widget.onSearch,
        decoration: InputDecoration(
          hintText: "Search songs, artists, playlists and more",
          helperMaxLines: 1,
          hintStyle: textSubTitle,
          suffixIcon: _controller.text.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear, color: highlightPrimary),
                  onPressed: _clearSearch,
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: themeSecondary,
          contentPadding: const EdgeInsets.only(top: 2.0, left: 24.0, right: 50.0), // Adjust horizontal padding
        ),
      ),
    );
  }
}
