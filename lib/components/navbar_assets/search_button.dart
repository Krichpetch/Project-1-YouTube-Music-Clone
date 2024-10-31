import 'package:flutter/material.dart';

import '../../constant/constant.dart';

import '../../screens/search_screen.dart';


class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SearchPage()),
        );
      },
      icon: const Icon(
        Icons.search_outlined,
        size: 26,
        color: textPrimary,
      ),
    );
  }
}
